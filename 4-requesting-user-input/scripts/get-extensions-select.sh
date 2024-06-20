#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 14 Jun 2024
# Last Modified: 14 Jun 2024

# Description
# Create a .csv file using user input

# Usage
# In parent folder run ./get-extensions on terminal

read -p "What is your first name ? " name
read -p "What is your surname/family name ? " surname

PS3="What is the phone type you request ?: "
select phone_type in headset handheld;
do
echo "Selected phone type: $phone_type"
break
done 

PS3="What is your department ?: "
select department in finance sales "customer service" engineering;
do
echo "Selected department: $department"
break
done 

read -N 4 -s -p "What is your extension number ? " extension_number
echo
read -N 4 -s -p "What access code would you like to use when dialing in ? " access_code
echo
echo "$name,$surname,$extension_number,$access_code,$phone_type,$department" >> ./out/extensions.csv

exit 0
