#!/bin/bash
# Author : FMB237
echo  "From 0 to 255 the command have codes"
echo "Like 0 means NO ERROR"
echo "code 126 means permission denied"
echo "code 127 means Mistyped command"

ls -l > /dev/null
echo "The exit code of the ls command was : $?"

lzl 2 > /dev/null
echo "The exit code of the non-existing command was : $?" #This will display the command code 127 since the lzl command doesn't exist

#To exit from a script we used the code 223
exit 223
