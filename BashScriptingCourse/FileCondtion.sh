#!/bin/bash
#In this file let see how file condtions works in linux using bash scripting

#Let  list our condtions

#1.[-e filename ] :Tell you weather a file exist or not
#2.[-r filename ] :Tell us if a file is readable
#3.[-h filename ] :Syslink
#4.[-d filename ] :Tell us if a given directory exists
#5.[-w filename ] :Tell us if a file is been Writable(Can be modified)
#6.[-s filename ] :Give to us the file size > bytes
#7.[-f filename ] :Tell us if the file exist.



#Let start it usage
#Let store our variables inside variables

File1=Arrays.sh
File2=variables.sh
File3=hello.sh

#Let use those condtions

if [ -h $File3  ]
then
      echo "$File3 is in the current directory and is readable"
else
      echo "$File1 not found in th current directory"
fi
 


