#!/bin/bash
# Author : FMB237

# In this lesson we gonna used the case  operations which has the syntax
# case  expression in
# pattern1)
# Block of code to execute if expression pattern1
#   ;;
# pattern2)
#   ;;
# *)
#   ;;
# esac
# Let move on to a pratical example using ip addresses

# --------------------------------------
# Purpose :This script analyse the provided Ip address to identity if it belongs to class A(10.0.0.0/8) or Class C (192.168.0.0/16)
#  Usage : ./scriptname.sh <IP_Address>

# Note : The script only checks the begining  octets and uses a simple pattern match, not a full robust Api validation.
# -------------------------------------

# Let declare our IP_Address
IP_Address="${1}"
if [ -z "${IP_Address}" ]; then
    echo "Error : NO IP address Provided"
    echo "Usage $0 <IP_Address>"
    exit 1
fi

case ${IP_Address} in
    192.168.*)
     echo "Network is 192.168.x.x (Class C Private range)"
    ;;
    10.0.*)
     echo "Network is 10.0.x.x (Class A Private range)"
    ;;
    *)
        echo "Could not identity the network (Not 192.168.x.x or 10.0.x.x)"
        echo "Note : This also catch miising input!"
        ;;
esac

# Launch the program using adding an ip-address
