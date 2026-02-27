#!/bin/bash
# Author : FMB237
# Let do some functions in bash

#What is a function??
# A function is been define as reusable  block of code that permit to execute a specific task in our code
# Since funcions can be reused the are said to be very useful in coding
# Let define a simple function and call it back
say_my_name(){
    echo "My name is Bruce"
    return 0
}

say_my_name

# Let write a small function to check for the root user operation
check_if_root(){
    if [[ "${EUID}" -eq "0" ]]; then
        return 0
    else
        return 1
    fi
}

if check_if_root; then
    echo "Priveledge Status:user is root! Procedding with Priveledge actions"
else
    echo "Priveledge Status : user is not root! Not proedding with privelge actions"
fi
