#!/bin/bash
#This simple script will be  used for the updating,upgrading and removing of unwanted packets on our system

sudo apt update -y
echo "Updating packers"
sudo apt upgrade -y
echo"Upgrading packets"
apt-get remove -y
echo "Removing on use packets"
