#!/bin/bash
# Author : Fouenang Miguel Bruce

#Let create an array of Ip addresses using bash
Ip_Addresses=(192.168.1.1 192.168.1.2 192.168.1.3 192.168.1.4)
echo ${Ip_Addresses[0]} #Use to print the first element of the array
echo ${Ip_Addresses[*]} #Use to print all elements of the array
#Let create another array and work with
Fruits=(Apple Pinapple mangoes lemon)
echo ${Fruits[3]}
#To remove an item inside the array we used the command unset
unset "${Fruits[3]}"
echo "${Fruits[*]}"
sleep 10
