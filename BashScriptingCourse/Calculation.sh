#!/bin/bash
#
# Calculation.sh
# Simple arithmetic examples and notes for learners.
#
# Usage:
#   bash Calculation.sh
#   or
#   chmod +x Calculation.sh && ./Calculation.sh
#
# Declare some variables
a=20
b=22
# Use arithmetic expansion (modern and recommended)
sum=$((a + b))
difference=$((a - b))
product=$((a * b))
quotient=$((a / b))   # integer division
echo "The sum of a and b is ${sum}"
echo "The difference of a and b is ${difference}"
echo "The product of a and b is ${product}"
echo "The quotient of a and b is ${quotient}"
echo
echo "Examples of direct calculations"
# Using expr (older; needs command substitution)
echo "expr example: $(expr 5 - 16 + 52)"
echo "expr example: $(expr 5 + 5)"
# Prefer arithmetic expansion where possible
Total=$((7 + 8 * 5 + 23))
echo "Using the Total we have ${Total}"
# Store arithmetic results in variables using $((...))
x=$((10 + 10))
y=$((50 + 50))
z=$((60 - 55))
echo "x y z => $x $y $z"
xyz=$((x + y + z))
echo "Sum of x, y and z = ${xyz}"
# Notes:
# - Use arithmetic expansion $(( ... )) for clarity.
# - For floating point arithmetic, use bc or awk (bash supports only integer arithmetic natively).