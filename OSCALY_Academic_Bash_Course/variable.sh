#!/bin/bash
# Authour : FMB237
# This is a simple bash script to show and represent variables usage in bash
Firstname="Fouenang"
Sub_name="Miguel Bruce"
age=22
level=4
list=$(ls) # This is used to store a particular variable value

#unset list # used to remove a variable property from it
makefile=$(touch Untitle.txt)
unset makefile
FileTree= $(mkdir -p 1/2/3)

echo  "I am  $Firstname $Sub_name with $age years old in $level at ENSPD."
echo $list
$makefile
