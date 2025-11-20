#!/bin/bash

echo "Password generating"
#Let do some password generting in bash and also used the command to get a long a secure code to use for password 
#variables code

#Pass= date  | sha256sum
#Also  used the cut command for our password gen which  will randomly cut the pass variables

Password= date |sha256sum | cut -b 1-16
#The $1 can be used to choose the length of  the password.

