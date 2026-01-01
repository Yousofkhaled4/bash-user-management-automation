#!/bin/bash
# Define CSV file name
CSV_FILE="employee.csv"
# Check if script is run as root
if [ "$UID" -ne 0 ]
then 
	echo "script must be run as a root. "
	exit 1 
fi
# Check if CSV file exists
if [ ! -f "$CSV_FILE" ]
then
	echo "csv file not found: $CSV_FILE"
	exit 1
fi
# Read CSV file line by line
while IFS=, read -r username full_name
do
	# Generate random password
	password=$(openssl rand -base64 12)
	# Create user with home directory and full name
	useradd -m -c "$full_name" "$username"
	# Set user password
	echo "$username:$password" | chpasswd 
	# Force password change on first login
	chage -d 0 $username
	# Print user details
	echo "User Created: $username"
	echo "Full name: $full_name"
	echo "Random Password: $password"
	echo "----------------------------------------------------"
	# Save credentials to output file
	echo "$username,$password" >> out.txt
done < $CSV_FILE
echo "User Creation Completed"

