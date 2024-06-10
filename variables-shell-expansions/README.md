### Parameter

A parameter is any entity that stores values <br>
There are 3 types of parameters; <br>

- Variables -> A parameter whose values you can manually change
- Positional parameters
- Special parameters

#### Shell Variables (Environment Variables)

- You can update shell variables on terminal <br>
Ex; -->PS1="$: "<-- will update PS1 shell variable as '$: ' <br>
Then run -->source ~/.bashrc<-- to update bash shell without restarting terminal

- As all shell variables are uppercase, custom variables should be defined in lowercase, in order to distinguish them from shell variables

##### Bourne Shell Variables
- Bourne shell, Total 10
  - PATH -> Contains list of folders that the shell will search for executable files to run as command names <br>
  -->echo $PATH<-- command will show all paths
  - HOME -> Home directory path
  - USER -> Current user name
  - HOSTNAME -> Name of the current computer (Linux)
  - HOSTTYPE -> Type of processor achitecture the computer is running (Linux)
  - PS1 - Prompt string shown in the terminal before each command

##### Bash Shell Variables 
- Bash Shell, Bourne Again SHell (BASH), Total 95

```
// Will change default shell to bash
chsh -s /bin/bash
```
#### Parameter Expansions

Expansions will NOT modify the parameter_value

- -->echo ${<parameter_name>,}<-- Will change parameter_value first character to lower case
- -->echo ${<parameter_name>,,}<-- Will change parameter_value characters to lower case
- -->echo ${<parameter_name>^}<-- Will change parameter_value first character to upper case
- -->echo ${<parameter_name>^^}<-- Will change parameter_value characters to upper case
- -->echo ${#<parameter_name>}<-- Will show character count of parameter_value