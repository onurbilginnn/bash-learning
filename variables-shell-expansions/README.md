### Parameter

A parameter is any entity that stores values <br>
There are 3 types of parameters; <br>

- Variables -> A parameter whose values you can manually change
- Positional parameters
- Special parameters

#### Shell Variables (Environment Variables)

- You can define custom variable simply ```<parameter_name>=<parameter_value>```
- You can update shell variables on terminal <br>
Ex; ```PS1="$: "``` will update PS1 shell variable as '$: ' <br>
Then run ```source ~/.bashrc``` to update bash shell without restarting terminal

- As all shell variables are uppercase, custom variables should be defined in lowercase, in order to distinguish them from shell variables

##### Bourne Shell Variables
- Bourne shell, Total 10
  - PATH -> Contains list of folders that the shell will search for executable files to run as command names <br>
  ```echo $PATH``` command will show all paths
  - HOME -> Home directory path
  - USER -> Current user name
  - HOSTNAME -> Name of the current computer (Linux)
  - HOSTTYPE -> Type of processor achitecture the computer is running (Linux)
  - PS1 - Prompt string shown in the terminal before each command

##### Bash Shell Variables 
- Bash Shell, Bourne Again SHell (BASH), Total 95

#### Parameter Expansions

Expansions will NOT modify the parameter_value

- ```echo ${<parameter_name>,}``` Will change parameter_value first character to lower case
- ```echo ${<parameter_name>,,}``` Will change parameter_value characters to lower case
- ```echo ${<parameter_name>^}``` Will change parameter_value first character to upper case
- ```echo ${<parameter_name>^^}``` Will change parameter_value characters to upper case
- ```echo ${#<parameter_name>}``` Will show character count of parameter_value
- ```echo ${<parameter_name>:<start_index>:<end_index>}``` Will return substring of parameter_value by start and end indexes
- ```echo ${<parameter_name>:<start_index>}``` Will return substring of parameter_value by start index to the end
- ```echo ${<parameter_name>: -3:2}``` Will return substring of parameter_value like 3rd character from the end of the parameter_value and total 2 characters from it. Do NOT forget the space! <br>
Example; numbers parameter is 0123456789 ```echo ${numbers: -3:2}``` Will result 78

#### Command Substitution

- ```$(<command>)``` Will only show the **output** of the command

#### Arithmetic Expansion

- ```$((<expression>))``` Will only show the **output** of the expression (+, -, *, /, **, %)
- For decimal calculations get help of ```bc``` command <br>
```echo "scale=2; 5/2" | bc``` Will output 2.50, **scale** is for decimal places count <br>
```echo "scale=2; 5^2" | bc``` Power operator is different with bc
