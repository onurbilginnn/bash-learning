#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 19 Jun 2024
# Last Modified: 19 Jun 2024

# Description
# Creates txt files with headers of ./files/urls/txt urls

# Usage
# In parent folder run ./scripts/challenge-for.sh

readarray -t urls < ./files/urls.txt

# readarray -t filenames < <(cut -c 5- ./files/urls.txt)

# for i in "${!urls[@]}"; do
#     echo "creating txt for ${urls[$i]}"
#     touch "./files/${filenames[$i]}.txt"
#     echo "Getting headers for ${urls[$i]}"
#     curl --head ${urls[$i]} > "./files/${filenames[$i]}.txt"
#     echo "File ${filenames[$i]}.txt created!"
# done 

for url in "${urls[@]}"; do
    webname=$(echo $url | cut -d "." -f 2)
    curl --head "$url" > "./files/$webname".txt
    # rm ./files/"$webname".txt
done

exit 0