#!/bin/bash
# Author : FMB237

#Let do some redirections in linux
echo "
> : Use to redirect informations to a file
>> : Stoudt to a file appends
&>: stdout and stderr to a file overwrite
&>> :  stdout and stderr to a file to appends
< : rediects input to commands reads from a file
<< : heredoc
"
cat >> "Cat.txt"
echo create.sh <<EOF
Hello World
EOF

# Using the pipe command
ls -l  / | grep bin
