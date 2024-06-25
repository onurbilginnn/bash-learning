### Parameter

A parameter is any entity that stores values

There are 3 types of parameters;
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
  - HOSTNAME -> Name of the current computer
  - HOSTTYPE -> Type of processor achitecture the computer is running
  - PS1 - Prompt string shown in the terminal before each command

##### Bash Shell Variables 
- Bash Shell, Bourne Again SHell (BASH), Total 95

#### Parameter Expansions

Expansions will NOT modify the parameter_value

- ```<parameter_name>=<parameter_value>```
- ```echo ${<parameter_name>,}``` Will change parameter_value first character to lower case
- ```echo ${<parameter_name>,,}``` Will change parameter_value characters to lower case
- ```echo ${<parameter_name>^}``` Will change parameter_value first character to upper case
- ```echo ${<parameter_name>^^}``` Will change parameter_value characters to upper case
- ```echo ${#<parameter_name>}``` Will show character count of parameter_value
- ```echo ${<parameter_name>:<start_index>:<characters_length>}``` Will return substring of parameter_value by start index to specified characters_length
- ```echo ${<parameter_name>:<start_index>}``` Will return substring of parameter_value by start index to the end
- ```echo ${<parameter_name>: -3:2}``` Will return substring of parameter_value like 3rd character from the end of the parameter_value and total 2 characters from it. Do NOT forget the space! <br>
Example; numbers parameter is 0123456789 ```echo ${numbers: -3:2}``` Will result 78

#### Command Substitution

- ```$(<command>)``` Will only show the **output** of the command

#### Arithmetic Expansion

- ```$((<expression>))``` Will only show the **output** of the expression (+, -, *, /, **, %)
- For decimal calculations get help of ```bc``` command <br>
```echo "scale=2; 5/2" | bc``` Will output 2.50, **scale** is for decimal places count in the output <br>
```echo "5^2" | bc``` Power operator is different than `**` with bc

#### Tilde Expansion

- tilde redirects you directly to $HOME environment variable path value ```echo ~``` will show $HOME value
- ```echo ~colleague``` will show ```/Users/colleague```, if colleague is a valid user
- ```echo ~root``` will show ```/var/root```
- ```pwd``` or ```echo $PWD``` will show working directory (PWD -> Print Working Directory)
- ```echo $OLDPWD``` will show **previous** working directory
- ```cd ~+``` will expand to PWD
- ```cd ~-``` will toggle between home and OLDPWD

#### Brace Expansion

##### Brace Expansion String Lists

- ```echo {a,19,z,barry,42}``` will show list without comma (Comma between commas will be interpreted as a character)
- ```echo {1,2,3,4,5,6,7,8,10}``` -> ```echo {1..10}``` both same 2nd is range list

##### Brace Expansion Range Lists

- ```echo {10..1}``` 10 to 1
- ```echo {a..z}``` a to z
- If range is not acceptable by the computer it will directly print same text to the terminal <br>
```echo {jan..dec}``` will show {jan..dec}

##### Brace Expansion Incrementions

- ```echo {1..1000..3}``` 1 to 1000 by incrementing by 3 -> 1 4 7 10 ..... 1000

##### Brace Expansion Prefixes & PostFixes

- ```mkdir month{01..12}``` will add month01 month02 .... month12 folders to the current directory
- ```touch month{01..12}/day{01..31}.txt``` will add day01.txt day02.txt .... day31.txt folders to the month01 month02 .... month12 directories
