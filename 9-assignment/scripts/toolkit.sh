#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 22/06/2024
# Last Modified: 22/06/2024

# Description
# Selecter for cruft-remover.sh and folder-organiser.sh

# Usage
# run path/scripts/toolkit.sh

PS3="Please select the action you want to run: "

select action in "Remove Crufts" "Organise Folder";
do
echo "Selected action: $action"
break
done 

case "$action" in
        "Remove Crufts") $PWD/scripts/cruft-remover.sh;;
        "Organise Folder") $PWD/scripts/folder-organiser.sh;;
        *) echo "No such action";;
esac

exit 0