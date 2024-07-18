#!/opt/homebrew/bin/bash

while read line; do
 if [[ -f "./$line" ]]; then
    echo "$line is a file"
 elif [[ -d "./$line" ]]; then
    echo "$line is a directory"
 fi
done < <(ls)

exit 0

