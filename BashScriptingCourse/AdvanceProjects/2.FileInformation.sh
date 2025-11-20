#!/bin/bash

#So this script has the aim to give all the informations  about a file
#So it size,time creation 
#Genearall for  ofr basics informations we used the command 
ls -la

#Now let set up our script

if [ $# -eq 0 ]
then 
   echo "Usage : $0 [file]"
fi

Owner= ls -la $1  | awk  '{print$3}' #Variables used for printing specific inforamtions
fileSize= ls -la $1 | awk '{$print5}' #For file size
month= ls -la $1 | awk '{$print6 " " $7}'
echo "Owner:$Owner"
echo "fileSize:$fileSize bytes"
echo "This is file was created on $month " 

