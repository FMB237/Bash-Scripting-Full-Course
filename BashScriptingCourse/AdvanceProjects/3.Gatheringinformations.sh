#!/bin/bash 
#Gathering informations into a Csv file 

#Let enter out input
#To store this input value inside variable add them at the end
read -p "[+]Enter your name : " Name
read -p "[+]Enter your employe id :" id
read -p "[+]Enter your department :" Depatement 
read -p "[+]Enter your gender :" Gender

#Let store all this  varaibles into a single varaible
UserInfo=$Name,$id,$Depatement,$Gender

#let check if the inforamtions are correct 
read -p "Do you have given the correct informations [y/n] :" INPUT

case "$INPUT" in 
      n | N )
exit
;;
Y | y)  
#Now let store all this informations inside a csv or even a text file
echo $UserInfo >> employee_data.csv
;;
 *)
exit
;;
esac

echo "Data store into the employees.csv file "
