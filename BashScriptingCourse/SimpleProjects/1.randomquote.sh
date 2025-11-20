#!/bin/bash
#This is a random code generator program

#For this  we gonna store our quotes into an array and randomly call them
#Let create our quote variable

quotes=( "Damn bro this life no balance. -Nigeria" "I'm Falling down into my shadow like in deathly nights By SoulEater"
"This is a very sad news Jiraya sensei is death -Naruto " "Hello World for all beginners in programming -By Every Beginner" )
#echo ${quotes[@]}

#let used the random build in functions to for our code

echo $RANDOM
#For a random range we used the build-in  function

echo $((RANDOM%100))

echo ${quotes[$RANDOM%4]}
