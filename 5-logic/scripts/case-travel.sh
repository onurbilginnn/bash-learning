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

result="Country:"
case "$city" in
        Tokyo) result="$result Japan";;
        "Los Angeles") result="$result USA";;
        "New York") result="$result USA";;
        "Abu Dhabi") result="$result UAE";;
        London) result="$result UK";;
        Manchester) result="$result UK";;
        Moscow) result="$result Russia";;
        Dubai) result="$result UAE";;
        Paris) result="$result France";;
        Bangalore) result="$result India";;
        Pune) result="$result India";;
        Karachi) result="$result Pakistan";;
        Johannesburg) result="$result South Africa";;
        Istanbul) result="$result Turkey";;
        Nairobi) result="$result Kenya";;
        Berlin) result="$result Germay";;
        Milan) result="$result Italy";;
        *) echo "Could be anywhere, I don't know!"; exit 0;;
esac

echo $result;

exit 0