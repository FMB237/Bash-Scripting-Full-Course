#!/bin/bash
#Let look out the function of cases in bash 

echo "Enter your name :"
read NAME

case $NAME in
        "root")
              echo "You have access to this folder"
;;
       "bruce" )
            echo "You  have access to this folder ."
;;
           * )
         echo "You don't have access to this folder"
esac
