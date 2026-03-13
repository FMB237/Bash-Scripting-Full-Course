#!/bin/bash
# Author : FMB237

# This loop mainly functions the same way as a do while loop used in other programming languages it is even the same
# The syntax is
# until condition; do
 # ########
 # done
 # So it mainly the opposite of the while loop
 file=output.txt
 touch " ${file}"

 until [[ -s "${file}" ]]; do
     echo "${file} is empty"
     echo "Checking again in 2 secondes"
     sleep 2
 done

echo "${file} appears to have some contain in it!"
