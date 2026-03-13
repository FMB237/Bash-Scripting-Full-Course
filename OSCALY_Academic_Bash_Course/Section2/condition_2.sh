#!/bin/bash
# Author : FMB_237
# Let do some small other program for users conditions

Expected_User="root"
Current_User=$(whoami)
if [[ "${Current_User}" == "${Expected_User}" ]]; then
    echo "Access granted: Running as required user: (${Current_User})"
else
    echo "Access denied :Script requires 'root', currently Running as : (${Current_User})"
fi

# This program can be run using the sudo bash conditon_2.sh
# let do some additions programs
num1=20
num2=15
if [[ "${num1}" -gt "${num2}" ]]; then
    echo "${num1} is greater than ${num2}"
else
    echo "${num2} is greater than ${num1}"
fi
