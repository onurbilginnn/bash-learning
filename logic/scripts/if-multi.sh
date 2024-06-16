#!/opt/homebrew/bin/bash

a=$(cat ./out/file1.txt)
b=$(cat ./out/file2.txt)
c=$(cat ./out/file3.txt)
# if [ $a = $b ] && [ $a = $c ]; then
if [ $a = $b ] || [ $a = $c ]; then
        rm ./out/file2.txt ./out/file3.txt
else 
        echo "Files do not match"
fi

exit 0