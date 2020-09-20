#!/bin/bash
echo "Welcome to the User Registration Program"

read -p "Enter First Name : " firstName
read -p "Enter Last Name : " lastName
read -p "Enter User Id : " email
read -p "Enter Mobile Number : " mobile 
read -p "Enter Password : " password
pattern="^[[:upper:]]{1}[a-zA-Z0-9]{2,}$"

emailPattern="^[[:lower:]]{3}[a-zA-Z0-9]*([-+_.]?[a-zA-Z0-9])*@[a-z]{2,}.[a-z]{2,3}([.][a-z]{2})*$"

mobilePattern="^[0-9]{2}[[:space:]][0-9]{10}$"

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

if [[ $mobile =~ $mobilePattern ]]
        then
                echo "$mobile : It's a Valid Mobile Number"
        else
                echo "$mobile : It's an Invalid Mobile Number"
        fi
if [[ ${#password} -ge 8 ]]
        then
                echo "Password Set Successfully "
        else
echo  "Incorrect Password Your Password Must Have length should be minimum 8 characters"
        fi
