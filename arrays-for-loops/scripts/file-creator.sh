#!/opt/homebrew/bin/bash

readarray -t files < ./files/files.txt

for file in "${files[@]}"; do
        if [ -f "./files/$file" ]; then
                echo "$file already exists"
        else
                touch "./files/$file"
                echo "$file was created"
        fi
done

