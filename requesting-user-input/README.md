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

### READ Command

- ```read``` command will store user input in $REPLY variable
- ```read input1 input2``` command will store user input in input1 and input2 variables
- ```read -p "What is your name?" name``` ```-p``` prompts "What is your name?" then store user input in name variable.
- ```read -t 5 -p "What are you doing ? " job``` ```-t 5``` read prompt will timeout after 5 seconds
- ```read -s -t 5 -p "What is your password ? " password``` ```-s``` secret keyword will hide what input is written in terminal, but it still stores the value in password variable

### Select Command

- ```select``` command will store user input in $RESPONSE variable
- ```select input1``` command will store user input in input1 variable
```select day in mon tue wed thu fri sat sun;``` command will store user input in day selection should be [mon, tue, wed..., sun] values.
- ```do``` command says bash what to do after selection
- As default if you select one option select will loop and wait for new response, in order to cancel loop use ```break``` command in ```do-done``` block.
- ```PS3``` shell variable adds select command a prompt like read command ```-p``` flag.
- Latest code block;
```
PS3="What is the day of the week?: "

select day in mon tue wed thu fri sat sun;
do
echo "The day of the week is $day"
break
done 
```
