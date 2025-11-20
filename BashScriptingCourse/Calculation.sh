#!/bin/bash
#This is a program  use to  Arithmetic in bash
#Let do some Arithmetic in Bash
#Let declare some variables

a=20
b=22
sum=$((a+b))
differcent=$((a-b))
product=$((a*b))
quotient=$((a/b))

echo They sum of a and b is ${sum}
echo They differcent of a and b is ${differcent}
echo They product of a and b is ${product}
echo They quotient of a and b is ${quotient}


echo "This is an example of the usage of arithmeric operations in  bash"


#Let use other expressions
echo "Some direct Calculations"
expr 5 - 16 + 52 
expr 5 + 5 


#Let add a total variable

Total=$((7+8*5+23))
echo Using the total  we have ${Total}

#We can also store the small operation inside variables

x= expr 10 + 10
y= expr 50 + 50
z= expr 60 - 55

echo $x $y $z

xyz=$((x+y+z))
echo ${xyz}
#Final results 
