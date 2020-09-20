#!/bin/bash
echo "Welcome to the User Registration Program"
read -p "Enter First Name : " firstName
read -p "Enter Last Name : " lastName
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"
emailPattern="^[[:lower:]]{3}[a-zA-Z0-9]*([-+_.]?[a-zA-Z0-9])*@[a-z]{2,}.[a-z]{2,3}([.][a-z]{2})*$"
if [[ $firstName =~ $pattern ]]
        then
                echo "First Name : $firstName is Valid"
        else
                echo "First Name : $firstName is an Invalid"
        fi
if [[ $lastName =~ $pattern ]]
        then
                echo "Last Name : $lastName is Valid"
        else
                echo "Last Name : $lastName is an Invalid"
        fi
if [[ $email =~ $emailPattern ]]
        then
                echo "$email : It's Valid Email"
        else
                echo "$email : It's an Invalid Email"
        fi

