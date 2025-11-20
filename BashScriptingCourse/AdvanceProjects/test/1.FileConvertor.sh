#!/bin/bash
#This  peace of code is written to convert .jpg into png files
#So this is mainly the changing of the file extension


#For this we gonna the following tools using the following set of commands

sudo apt install graphicsmagick-imagemagick-compat

#Now let proceed with the program

if [ $# -eq 0 ]
then  
     echo " Usage :$0 [file-1] [file-2] ... [file-n]"
fi

for i in $@
do
    if [ -f $i 
then
  convert $i $i.png
else
echo "ERROR $i is not a file"
fi
done

echo "File conversion completed"
