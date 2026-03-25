#!/bin/bash
# Author : FMB237

#Used the read command for capturing inputs.
echo "Name is Your firstname ? : "
read -r "firstname"

echo "What is your lastname ?"
read -r "lastname"

echo "My firstname is ${firstname} and my lastname is ${lastname}"
