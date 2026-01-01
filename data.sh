#!/bin/bash

# Ask user to enter username
read -p "Enter your user name: " user 
# Ask user to enter full name
read -p "Enter your Full name: " name 
# Combine data in CSV format
INFO=$user,$name
# Ask for confirmation before saving
read -p "are you sure data is correct [y/n]" input

case $input in
	n | N)
	# Exit if user chooses No
	exit  
	;;
	y | Y)
	# Append data to employee.csv file	
	echo $INFO >> employee.csv 
	;;
	*)
	# Exit on invalid input
	exit 
	;;
esac
echo "your data has been stored successfully"

