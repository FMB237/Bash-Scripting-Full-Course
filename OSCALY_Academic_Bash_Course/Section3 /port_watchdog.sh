#!/bin/bash
# Author : FMB237

Log_File="pure_bash_watchdog.log"  # This where we will store all the informations about our program
# Let define an ip_address
ip_address="${1}"
watched_port="${2}"
# Let define a small time interval for this program  < >
Sleep_time=5

if [[ $# -ne 2 ]]; then
   echo "Usage: $0" <ip_address>  <port>
   exit 1
fi

service_discovery(){
    local host="${1}"
    local port="${2}"

    echo -e "\n--- PURE BASH DISCOVERY CONFIMED ----" >>"${Log_File}"
    echo -e "Status:Port ${port} on ${host} is now Open. " >> "${Log_File}"
    (
        exec 6<>/dev/tcp/${host}/${port}

        echo -e "GET /HHTP/1.0\r\n\r\n" >&6

        read -r BANNER_LINE <&6

        echo -e "SERVER BANNER : ${BANNER_LINE}" >> "${Log_File}"

        exec 6>&-
    )&>> "${Log_File}"
}

echo "We are starting the infinite monitoring loop"
echo "Monitoring target : ${ip_address}:${watched_port}"

while true; do
    (exec 6<>/dev/tcp/${ip_address}/${watched_port}) &> /dev/null
    port_status=$? # capture the port Status
    exec 6>&-

    if [ "${port_status}" on -eq 0 ]; then
        echo "${ip_address} has started responding port ${watched_port}"
        service_discovery "${ip_address}" "${watched_port}"
        echo "Pure bash data written to ${Log_File}"
        break
    else
        echo "Port is not yet open,simulating sleep for ${Sleep_time} seconds ..."
        Start_time=$seconds
        END_Time=$(($Start_time + Sleep_time))
        while [ $seconds -lt $END_Time ]; do
            :
        done
    fi
done
