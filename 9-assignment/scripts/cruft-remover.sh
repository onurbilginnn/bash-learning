#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 22/06/2024
# Last Modified: 22/06/2024

# Description
# Help you to keep your system clear of unnecessary files

# Usage
# Use toolkit.sh and select 1st option

read -p "Please enter the folder path that you want to clean from crufts: " folder_path
read -p "Please enter the days count that each file should be unmodified or to be considered cruft: " cruft_days

readarray -t cruft_files < <(find $folder_path -type f -mtime $cruft_days)
for cruft_file in "${cruft_files[@]}"; do
    rm -i "$cruft_file"
done

echo "Cruft removal finished!"

exit 0