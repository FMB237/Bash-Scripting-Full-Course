#!/bin/bash
# Author :FMB237
# Let look how loops functions in bash
# When we are talking abouts loops in programming we are mainly referring to while,for,and until loop
#
# In bash loops can be used in pentest tasks

while true; do
    echo "Hello World"
    sleep 2
done
#With this type of loop we can easily check weather an ip address is still up in our analyses.

# Now let look the functions of the while loop
signal_to_stop_loop="hiddenfile.txt"

while [[ ! -f "${signal_to_stop_loop}"  ]]; do
    echo "The file ${signal_to_stop_loop} doesn't yet exist...."
    echo "Checking in 2 seconds...."
    sleep 2
done
echo "File was not found ! Exiting"
