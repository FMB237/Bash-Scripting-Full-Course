#!/bin/bash
#Let used some Strings in bash

#Strings are mainly chaines of characters

word="A string is a chain of character"
welcome="welcome to Bash Scripting"

echo  ${word} and   ${welcome/Bash/BASH}

echo ${word::10} #Used for cutting my word into only letters.
