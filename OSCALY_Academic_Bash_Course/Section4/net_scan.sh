#!/usr/bin/env bash
# So we modified the bash interpreter for this work
# Author : FMB237

# Let define our default subnet

Subnet=${Subnet:-"192.168.152"}
Scan_Port=${Scan_Port:-22} # 22 = ssh
Max_Ip=${Max_Ip:-254} # Max host in the subnet to scan (1...254)
Max_Jobs=${Max_Jobs:-120} # Max number of concurrent attemp
Poll_Interval=${Poll_Interval:-0.4}

VERBOSE=false

# Let Now define the usage

usage(){
    cat << EOF
    Usage: $0 [options]
    -s| --subnet <A.B.C>    first 3 octets (default: $Subnet)
    -p| --port <port>       port to connect to default (default: $Scan_Port)
    -m| --max-ip <1.254>    highest host octets to scan (default: $Max_Ip)
    -j| --jobs <n>          max concurrent jobs   (default: $Max_Jobs)
    -v| --versbose          versbose mode (default:FALSE)
    -h| --help              show this
    Example:
       $0 -s 192.168.1. -p -j 150 -v
EOF
exit 1
}

while(( $# )); do
 case "$1" in
     -s| --subnet)
     Subnet="$2"
     shift 2
     ;;
     -p| --port)
     Scan_Port="$2"
     shift 2
     ;;
     -m| --max-ip)
     Max_Ip="$2"
     shift 2
     ;;
     -j| --jobs)
     Max_Jobs="$2"
     shift 2
     ;;
     -v| --verbose)
     VERBOSE=true
     shift
     ;;
     -h | --help)
     usage
     ;;
 *)
     echo "Unknown arg: $1"
     ;;
     esac
done

echo "Subnet: $Subnet"
echo "Scan_Port: $Scan_Port"
echo "Max_Ip: $Max_Ip"
echo "Max_Jobs: $Max_Jobs"
echo "Poll_Interval: $Poll_Interval"
echo "VERBOSE: $VERBOSE"
