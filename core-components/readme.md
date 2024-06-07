### Core Components

- Add "#!/bin/bash" on the first line of the file in order to mention that is a bash script file.
- On terminal run "file <bash_script_filename>" will show the type of the file as below; <br>
"first_script: Bourne-Again shell script text executable, ASCII text" <br>
If you add "#!/usr/bin/python3 to the first line of the script file and run "file <bash_script_filename>" <br>
You will see "first_script: Python script text executable, ASCII text"
- "chmod +x first_script" command to make script file to be executable, after command "ls" you will see the script file is colored which indicates that script file has permission to execute
- "./<bash_script_filename>" will execute the bash script

### Summary

All bash scripts have 3 core components;
- The shebang line (#!/bin/bash)
- Commands
- Exit statement (0=successful; 1-255=unsuccessful)