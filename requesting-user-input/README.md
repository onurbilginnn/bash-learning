### Positional Parameters

- ```./scripts/positional_script onat $HOME black``` will take the arguments passed to script ```onat $HOME black``` and run the script.

- In the script you can call these positional parameters by numbers first parameter ```$1``` then goes as ```$2``` and so on...
- ```./scripts/positional_script a b c d e f g h i j k```
- If you have 2 digit count of positional parameters you should use curly braces approach to fetch it in the script ```${10}``` and so on...
- ```${8:-0}``` will replace with zero if there is no 8th positional parameter found.


### Special Parameters

Parameters that bash gives **special meaning**. Seems like bash variables, but since we can change bash variable values, we can NOT change special parameter values.

Value of a special parameter is calculated for us based on our current script.

- ```$#``` shows the count of positional parameters. Can be used for script input quantity checking. Example; ```./scripts/positional-check-script```
- ```$0``` shows the name of the shell if used on terminal, shows the name of the script if used in script.
- ```$@``` returns values of the positional parameters as ```$1 $2 $3.... $N```, provide positional parameters as unquoted separate words, that are subject to **word splitting**
- ```"$@"``` returns values of the positional parameters as ```"$1" "$2" "$3".... "$N"```, stops **word splitting** and ensures the value of the positional parameters is exactly how they were provided by the user.
- ```$*``` exactly same as ```$@```
- ```"$*``` return values of the positional parameters by adding IFS variable between. Provides all positional parameters as **one word**, but separated by the **first character of the IFS** variable. NOT subject to further word splitting.<br>
Ex; ```IFS=,``` -> ```"$*"``` will print ```$1,$2,$3....,$N```
