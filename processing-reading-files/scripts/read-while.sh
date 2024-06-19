#!/opt/homebrew/bin/bash

# while read line < "$1"; do - Very common mistake will create infinite loop

while read line; do
        echo "$line"
# done < "$1"
done <  <(ls $HOME) # Will list files in home folder

exit 0