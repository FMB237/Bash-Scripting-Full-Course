#!/bin/bash

#Digital Clock using Bash
#From project 2 we used the date command to have  cut our password variable

#date --help
#After using the date  --help command  we can now have all the informations to please our digital clock in bash

date +%H:%M:%S

#Now let build a continues digital clock

while true 
do 
     clear #Been used to clear the clock previous time
     date +%H:%M:%S #Call the time 
     sleep 1 #Set a clock delay of 1 second
done
