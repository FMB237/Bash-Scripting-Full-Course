#!/bin/bash
# Author :FMB_237

echo "Using conditions in bash"
Firstname="Fouenang"
Lastname="Miguel Bruce"
num1=80
num2=60
num3=50

echo "${num1} ${num2} ${num3}"

# let do a file comparison conditions
Filename="flow_control.txt"
if [[ -f "${Filename}" ]]; then
    #Let check weather the condition is true
    echo "ERROR": ${Filename} already exists.Aborting to prevent overwrite
    exit 1 # means failure
else
    echo "File no found creating the Filename"
    touch "${Filename}"
fi
