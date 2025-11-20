#!/bin/bash
#Let do some strings comparison in bash 


a="Hello bro"
b="Hey bro"
c="Morning Bro"
d="Haa bro"

echo $a


if [ "$a" == "$b" ]
then
      echo"Same value"
else
      echo "Differcent Values"
fi

#Other conditions

if [ "$sc" == "$d" ]
then
      echo"They have the same values"
else
      echo "There have diifercent values"
fi






