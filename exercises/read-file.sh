#!/opt/homebrew/bin/bash

filepath="./files/file1.txt"

readarray -t lines < $filepath

echo "${lines[@]"

exit 0

