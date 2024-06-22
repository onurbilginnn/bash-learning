#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 22/06/2024
# Last Modified: 22/06/2024

# Description
# Organise files in the folder specified by folders

# Usage
# Use toolkit.sh and select 2nd option

read -p "Please give the folder path that you want to organise: " path

# First arg is folder name, second arg is file name
function move_file () {
    if [ ! -e "$path/$1" ]; then
                mkdir "$path/$1"
    fi
    mv "$path/$2" "$path/$1/$2"
}

while read file; do
file_extension=$(echo $file | cut -d "." -f 2)
case "$file_extension" in
        jpg|jpeg|png) move_file "images" "$file";;
        doc|docx|txt|pdf) move_file "documents" "$file";;
        xls|xlsx|csv)  move_file "spreadsheets" "$file";;
        sh) move_file "scripts" "$file";;
        zip|tar|tar.gz|tar.bz2)  move_file "archives" "$file";;
        ppt|pptx)  move_file "presentations" "$file";;
        mp3)  move_file "audio" "$file";;
        mp4)  move_file "video" "$file";;
        *);;
esac
done < <(ls "$path")

exit 0