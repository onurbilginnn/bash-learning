#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 17 Jun 2024
# Last Modified: 17 Jun 2024

# Description
# Creates directories by using the txt file pointed in ./out folder

# Usage
# In parent folder run ./scripts/challenge-read-while.sh <filename>.txt on terminal

folder="./out"

if [ ! -e $folder ]; then
        mkdir "$folder"
fi

while read line; do
        echo "Creating the directory in $folder folder-> $line"
        mkdir "$folder/$line"
done < "$1"

exit 0