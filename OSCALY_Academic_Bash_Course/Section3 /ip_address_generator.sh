#!/bin/bash
# Author : FMB237
# Let build a small ip address generator in bash
for ip in $( seq 1 254 );do
    echo "172.16.10.${ip}" >> 172.16.10-hosts_class_c.txt
done

# Using the sed and pipe commmand we can generate those ip address without even using a for loop

echo 10.1.0.{1..254} | sed 's/ /\n/g'

# we can also used the printf command for that
printf "10.1.0.%d\n" {1..254}
