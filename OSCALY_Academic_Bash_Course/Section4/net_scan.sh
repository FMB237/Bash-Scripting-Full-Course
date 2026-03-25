#!/usr/bin/env bash
# So we modified the bash interpreter for this work
# Author : FMB237

set -o errexit -o pipefail -o nounset

readonly SCRIPT_NAME=$(basename "$0")
readonly DEFAULT_SUBNET="192.168.152"
readonly DEFAULT_PORT=22
readonly DEFAULT_MAX_IP=254
readonly DEFAULT_MAX_JOBS=120
readonly DEFAULT_POLL_INTERVAL=0.4
readonly LOG_LEVEL_INFO="INFO"
readonly LOG_LEVEL_DEBUG="DEBUG"
readonly LOG_LEVEL_ERROR="ERROR"

Subnet="${Subnet:-$DEFAULT_SUBNET}"
Scan_Port="${Scan_Port:-$DEFAULT_PORT}"
Max_Ip="${Max_Ip:-$DEFAULT_MAX_IP}"
Max_Jobs="${Max_Jobs:-$DEFAULT_MAX_JOBS}"
Poll_Interval="${Poll_Interval:-$DEFAULT_POLL_INTERVAL}"
VERBOSE=false

timestamp(){
    date '+%Y-%m-%dT%H:%M:%S%z'
}

usage(){
    cat <<'USAGE'
Usage: $SCRIPT_NAME [options]
Options:
  -s, --subnet <A.B.C>    First three octets to scan (default: $DEFAULT_SUBNET)
  -p, --port <port>       Port to probe (default: $DEFAULT_PORT)
  -m, --max-ip <1..254>   Highest host octet to include (default: $DEFAULT_MAX_IP)
  -j, --jobs <n>          Number of concurrent probes (default: $DEFAULT_MAX_JOBS)
  -v, --verbose           Enable verbose logging
  -h, --help              Show this help and exit

Example:
  $SCRIPT_NAME --subnet 10.0.0 --port 443 --max-ip 32 --jobs 80
USAGE
    exit 1
}

while (( $# )); do
    case "$1" in
        -s|--subnet)
            Subnet="$2"
            shift 2
            ;;
        -p|--port)
            Scan_Port="$2"
            shift 2
            ;;
        -m|--max-ip)
            Max_Ip="$2"
            shift 2
            ;;
        -j|--jobs)
            Max_Jobs="$2"
            shift 2
            ;;
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        -h|--help)
            usage
            ;;
        *)
            printf '%s [%s] Unknown option: %s\n' "$(timestamp)" "$LOG_LEVEL_ERROR" "$1" >&2
            usage
            ;;
    esac
done

log(){
    printf '%s [%s] %s\n' "$(timestamp)" "$LOG_LEVEL_INFO" "$*"
}

log_debug(){
    if [[ "$VERBOSE" == true ]]; then
        printf '%s [%s] %s\n' "$(timestamp)" "$LOG_LEVEL_DEBUG" "$*"
    fi
}

log_error(){
    printf '%s [%s] %s\n' "$(timestamp)" "$LOG_LEVEL_ERROR" "$*" >&2
}

declare -A SEEN

declare -a RUNNING_PIDS=()
Monitor_PID=""
Launched=0
Finished=0
start_time=0

validate_inputs(){
    Subnet="${Subnet%.}"
    if ! [[ "$Subnet" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        log_error "Subnet must look like 192.168.1"
        exit 2
    fi

    if ! [[ "$Max_Ip" =~ ^[0-9]+$ ]] || ! (( Max_Ip >= 1 && Max_Ip <= 254 )); then
        log_error "Max_Ip must be an integer between 1 and 254"
        exit 2
    fi

    if ! [[ "$Max_Jobs" =~ ^[0-9]+$ ]] || ! (( Max_Jobs >= 1 && Max_Jobs <= 2000 )); then
        log_error "Max_Jobs must be an integer between 1 and 2000"
        exit 2
    fi

    Max_Ip=$((Max_Ip))
    Max_Jobs=$((Max_Jobs))
}

require_command(){
    if ! command -v "$1" &>/dev/null; then
        log_error "Required command '$1' is missing"
        exit 3
    fi
}

monitor_arp(){
    local line ip mac
    while true; do
        while IFS= read -r line; do
            [[ -z "$line" ]] && continue
            if [[ "$line" =~ ^([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+).*lladdr[[:space:]]+([0-9a-fA-F:]+) ]]; then
                ip=${BASH_REMATCH[1]}
                mac=${BASH_REMATCH[2]}
                [[ "$ip" == "$Subnet".* ]] || continue
                if [[ -z "${SEEN[$ip]}" ]]; then
                    SEEN["$ip"]="arp:${mac}"
                    log_debug "ARP discovered $ip -> $mac"
                fi
            fi
        done < <(ip -4 neigh show 2>/dev/null)
        sleep "$Poll_Interval"
    done
}

scan_ip(){
    local ip="$1"
    log_debug "Probing $ip:$Scan_Port"
    if nc -z -w1 "$ip" "$Scan_Port" &>/dev/null; then
        log "Port $Scan_Port open on $ip"
        SEEN["$ip"]="port:$Scan_Port"
    else
        log_debug "No response from $ip:$Scan_Port"
    fi
    ((Finished++))
}

prune_finished(){
    local pid
    local alive=()
    for pid in "${RUNNING_PIDS[@]}"; do
        if kill -0 "$pid" &>/dev/null; then
            alive+=("$pid")
        else
            wait "$pid" 2>/dev/null || true
        fi
    done
    RUNNING_PIDS=("${alive[@]}")
}

wait_for_slot(){
    prune_finished
    while (( ${#RUNNING_PIDS[@]} >= Max_Jobs )); do
        if wait -n &>/dev/null; then
            :
        else
            wait "${RUNNING_PIDS[0]}" 2>/dev/null || true
        fi
        prune_finished
    done
}

launch_scans(){
    local host ip pid
    for host in $(seq 1 "$Max_Ip"); do
        ip="$Subnet.$host"
        scan_ip "$ip" &
        pid=$!
        RUNNING_PIDS+=("$pid")
        ((Launched++))
        log_debug "Launched scan for $ip (pid $pid)"
        wait_for_slot
    done

    while (( ${#RUNNING_PIDS[@]} > 0 )); do
        if wait -n &>/dev/null; then
            :
        else
            wait "${RUNNING_PIDS[0]}" 2>/dev/null || true
        fi
        prune_finished
    done
}

report_summary(){
    log "Completed scan in $((SECONDS - start_time))s; discovered ${#SEEN[@]} hosts"
    for host in "${!SEEN[@]}"; do
        printf '  %s -> %s\n' "$host" "${SEEN[$host]}"
    done
}

cleanup(){
    local rc=$?
    trap - EXIT INT TERM
    if [[ -n "$Monitor_PID" ]]; then
        kill "$Monitor_PID" 2>/dev/null || true
        wait "$Monitor_PID" 2>/dev/null || true
    fi
    for pid in "${RUNNING_PIDS[@]}"; do
        kill "$pid" 2>/dev/null || true
        wait "$pid" 2>/dev/null || true
    done
    log "Scan terminated (code: $rc). Launched: $Launched, Finished: $Finished, Hosts: ${#SEEN[@]}, Duration: $((SECONDS - start_time))s"
}

main(){
    start_time=$SECONDS
    trap cleanup EXIT INT TERM

    validate_inputs
    require_command nc
    require_command ip

    log "Starting scan on $Subnet.0/24 up to host $Max_Ip (port $Scan_Port)"
    monitor_arp &
    Monitor_PID=$!
    log_debug "ARP monitor PID $Monitor_PID"

    launch_scans
    report_summary
}

main "$@"
