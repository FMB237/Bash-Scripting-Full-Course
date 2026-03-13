#!/bin/bash
# Author : FMB237

# For a proper interaction with program we need to used the command STDIN and STDOUT
echo "STDIN : means data is coming into the program FDN=0"
echo "STDOUT : means data is coming out of our program FDN=1"
echo "STDERR: means we have an output error message from our program FDN = 2 "

#Now ler create our programs

mkdir folder1 folder2 folder1 #This is will return an error since folder1 will already have been created.
ls -a
