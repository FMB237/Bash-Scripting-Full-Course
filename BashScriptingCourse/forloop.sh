#!/bin/bash
#This program is for using the for loop in bash


#Let add and print it
a=1
Planet=( Earth Venus Mars Mercury Jupiter Saturn ) 

for i  in 1 2 3
do 
echo $i
done


#Let used the for loop to print the values of the names into the names.txt file


for i in ` cat names.txt`
do
echo $i
done 


for i in ${Planet[@]}
do 
echo $i
done


#infinite forloop
#for ((;;))
#do 
   #echo $a
#let a++
#done

