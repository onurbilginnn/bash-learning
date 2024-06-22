### cruft-remover.sh

- Ask the user which folder they want to remove "cruft" from and to define how many days files should be unmodified for to be considered as "cruft".
- Create an array of files that are eligible for removal.
- Iterate over the array and present the user an option to delete each file in the array

### folder-organiser.sh

- Use `ls` command to generate the list of files in a folder
- Use `case` statement to glob the file names for their file extension and action commands based on their file extension

### toolkit.sh

- Present the user a menu where they can choose which of the 2 scripts they want to run and then have this script run the relevant script based on the user's selection.