#!/bin/bash

#This script is been written  to set  the installation of the following tools on ubuntu

#So we gonna install and net-tools on ubuntu

if [ $UID -ne 0 ]
then 
     echo "ERROR run as root user"
  exit 1
fi

#Let store our package want to install inside an array
Packages=( filget sl net-tools )

#Let create a loop for the installation of this package

for i in ${Package[@]}
do 
echo  " [+] Installing package"
 apt install $i &>dev/null -y #The apt install $i will help us run the installation script
     echo "[+] installation complete"
done
