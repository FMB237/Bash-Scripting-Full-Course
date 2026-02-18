#!/bin/bash
#  Author : Fouenang Miguel Bruce
# Let create a variable that will  hold the name of the executable scripts

script_name="${0}"
target="${1}" #The first target to ping
#target2="${2}"

echo "Running the script : ${script_name}..."
echo "Pinging the target :${target} ..."
ping "${target}"
#So with this script i can ping any webiste from me machine

#Let do some echo arguements
echo "The arguements are :$@"
echo "The Total number of arguements is :$#" #Will give us the number os caracters used  in our phase
