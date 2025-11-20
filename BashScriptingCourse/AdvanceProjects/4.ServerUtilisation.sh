#!/bin/bash
#small script to check and automate task on a server 

#2.Let add some colors varaibles#

red="\e[1;31m" #For server errors
bleu="\e[1;34m" 
green="\e[1;32m" #For good data entry
Exit="\e[0m"

#1.Let clear our info before ant task


#5.Let add a divider  function use for dividing our informations in the server

function divider() {
 echo -e  "${red}======================================================${Exit}"
}
clear
#3.Let set up our program heading 

echo -e "                               ${green}***************************************${Exit}"
echo -e "                                     ${green}******SERVER UTILIZATION******"
echo -e "                               ${green}***************************************${Exit}"

#4.Let  add our current date for the server utilization

echo -e "Today is : `date`"

divider
echo 
echo "Uptime:`uptime`" #6.The uptime  functions is  a build in function use for servers

divider
echo 

echo "Currently logged-on user's" #7.The command w is been used for that
w
divider
#8.Now let set up last login

echo 
echo "last logins"

last -a | head -n 3
divider
echo 
#Let add disk memory usage

echo "Disk and memory Usage"
echo 
df -h | xargs  | awk '{print "Free/Total; disk:" $11 "/" $9 }'
echo
free -m | xargs | awk '{print  "Free/Total memory:" $17 "/" $8"  MB" }'
echo 
divider

echo "Utilization and most expessive processes"
echo 
top -b | head -n 3 
echo 

top -b | head -n 10
