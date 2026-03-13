#!/bin/bash
# Author : FMB237
#In the previous lessons we have learn about the while loop and the until loop
# Now let move on to the for loop
# Let look at the sysntax of the for loop in bash
#  for Variable_name in list ;do
  # akmlkmlk
  # done
#  Let move on to an example

for index in $(seq 1 10 );do
    echo "${index}" # This will list numbers from 1 to 10
    echo "${index} Oscaly.com"
done
