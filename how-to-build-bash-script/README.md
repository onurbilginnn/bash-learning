### Core Components

- Add "#!/bin/bash" on the first line of the file in order to mention that is a bash script file.
- On terminal run "file <bash_script_filename>" will show the type of the file as below; <br>
"first_script: Bourne-Again shell script text executable, ASCII text" <br>
If you add "#!/usr/bin/python3 to the first line of the script file and run "file <bash_script_filename>" <br>
You will see "first_script: Python script text executable, ASCII text"
- "chmod +x first_script" command to make script file to be executable, after command "ls" you will see the script file is colored which indicates that script file has permission to execute
- "./<bash_script_filename>" will execute the bash script

### Core Components Summary

All bash scripts have 3 core components;
- The shebang line (#!/bin/bash)
- Commands
- Exit statement (0=successful; 1-255=unsuccessful)

### Comments 

- To add a comment put "#" character at the beginning of the line and a whitespace

### Professional Information to Add in Script File

```
# Author: Onur Bilgin
# Date Created: 07/06/2024
# Last Modified: 07/06/2024

# Description
# Prints "Welcome to bash" to the terminal

# Usage
# first_script
```

### Security of File

- On terminal if you run "ls -l" -> Will list all folder files with current permission info; <br>
Ex; "drwxr-xr-x" or "-rw-r--r--" if the text begins with character "d" it indicates that it is a **directory** <br>
If the text begins with "-" it is a **file**, second character in the text means read permission <br>
If it is a "r" there is read permission else if it is a "-" no read permission and so on... <br>

"ls -l" -> "drwxr-xr-x  4 onurbilgin(file owner)  staff(file group)  128 Jun  7 14:13 how-to-build-bash-script" -> It is a directory and **file owner** have read, write, execute permissions, the on going 3 characters represents the **files group**, and the last 3 characters represents **every user** <br>

Best practice is to give read-write only to **file owner**, others could read

- "chmod 744 <bash_script_filename>" -> 744 is octo number, just check (chmod calculator)[https://chmod-calculator.com/]