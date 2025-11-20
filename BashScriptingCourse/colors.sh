#!/bin/bash 
#Let learn how to use colors in bash
#Colors are used for better code differcentiation and analysis 

echo -e  "\e[31m Using colors in bash \e[0m"

#The code colors for red is 31
#Let try 32 and observe the result.

echo -e  "\e[32m Using colors in bash \e[0m"

#Note that colors can be stored into variables for them to reused.
#Let add the variables

red="\e[31m"
green="\e[32m"
brown="\e[33m"
blue="\e[34m"
EXIT="\e[0m"
red2="\e[4;31m"
blueBG="\e[44m"
echo -e  "${blue} The sky is blue ${EXIT} "

#We can print the colors more in bold by adding a semi-colon between  the color code

echo -e "${red2} This is bolder ${EXIT}"

#To create a backgroundcolor used the code 40m to generate a fully  done bg-color

echo -e "${blueBG} This is a pokemon game ${EXIT}"



