#!/bin/bash
# This program is for the if and else condition using Bash Scripting

a=14
b=12
c=25

echo $a $b $c

if [ $a -eq 14 ]
then
    echo "Equal values"
else
    echo "Different values"
fi

#Let set another condition

if [ $b -eq 22 ]
then
    echo "Given arguement is equal to 22"
else
    echo "b is not equal to 22"
fi


