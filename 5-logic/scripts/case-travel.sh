#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 16 Jun 2024
# Last Modified: 16 Jun 2024

# Description
# Will match selected city names to countries related

# Usage
# In parent folder run ./scripts/case-travel.sh on terminal

PS3="Please select a city: "

select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Paris Bangalore Johannesburg Istanbul Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
echo "Selected city: $city"
break
done 

result=""
case "$city" in
        Tokyo) result="Japan";;
        "Los Angeles") result="USA";;
        "New York") result="USA";;
        "Abu Dhabi") result="UAE";;
        London) result="UK";;
        Manchester) result="UK";;
        Moscow) result="Russia";;
        Dubai) result="UAE";;
        Paris) result="France";;
        Bangalore) result="India";;
        Pune) result="India";;
        Karachi) result="Pakistan";;
        Johannesburg) result="South Africa";;
        Istanbul) result="Turkey";;
        Nairobi) result="Kenya";;
        Berlin) result="Germay";;
        Milan) result="Italy";;
        *) echo "Could be anywhere, I don't know!"; exit 0;;
esac

echo "Country: $result";

exit 0