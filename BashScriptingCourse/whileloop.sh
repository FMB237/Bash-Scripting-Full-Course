#!/bin/bash

#This is a simple program to illustrant the used of the while loop in bash 

Num=0
a=1
b=10
c=20
while [ $a -lt 10 ]
do
    echo $a
    let a++ #Use to increment up to 10. 
done

#So this is a simple incrementing loop in bash

#Now let do some more incrementing 


while [ $b -lt 20 ]
do
echo $b
let b++
done

#Let use the while loop to read files
cat names.txt
while read line
do
   echo $Num.$line
   let a++
done
