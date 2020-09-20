#!/bin/bash
echo "Welcome to the User Registration Program"
read -p "Enter First Name : " firstName
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
if [[ $firstName =~ $pattern ]]
        then
                echo "First Name : $firstName is Valid"
        else
                echo "First Name : $firstName is an Invalid"
        fi
