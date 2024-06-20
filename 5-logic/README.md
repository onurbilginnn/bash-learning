### Chaining Commands with List Operators

**List:** One or more commands on a given line.

- List operators:
  - & -> Will send first command to backwards and give it an id, and run second command. (Async run) <br>
  Ex; ```echo 123 & echo 456``` will show 456 then 123
  - ; -> Will run commands syncronously. Will run all commands even one of them fails. Shell does NOT care if any command failed.<br>
  Ex; ```echo 123 ; echo 456``` will show 123 then 456
  - && -> Second command only runs if the first command was successful (if exit code is 0) <br>
  Ex; ```echo 123 && echo 456``` will show 123 then 456 <br>
  Ex; ```ls random_dir && echo 456``` will show only the error, 2nd command will NOT run.
  - || -> Second command only runs if the first command failed (if exit code is NOT 0) <br>
  Ex; ```echo 123 || echo 456``` will show only 123 <br>
  Ex; ```ls random_dir || echo 456``` will show both the error and 456, as first command failed.
  - commandA && commandB || commandC -> run commandA if success -> run commandB if fails -> run commandC

### Test Commands and Conditional Operators

**Test command:** a command that can be used in bash to compare different pieces of information.

If a test is evaluated as **true**, the test will return an exit status of 0.

If a test is evaluated as **false**, the test will return an exit status of 1.

#### Integer Test Operators

- ```[ 2 -eq 2 ] ; echo $?``` will test 2 equals to 2, and prints the result 0 (true).
- ```[ 2 -ne 2 ] ; echo $?``` will test 2 NOT equals to 2, and prints the result 1 (false).
- ```-gt``` greater than ```-lt``` lower than ```-geq``` greater or equal to ```-leq``` lower or equal to

#### String Test Operators

```
a=hello
b=goodbye
```

- ```[[ $a = $b ]] ; echo $?``` will test `a` string variable equals to `b` string variable, and print result 1 (false)
- ```[[ $a != $b ]] ; echo $?``` will test `a` string variable NOT equals to `b` string variable, and print result 0 (true)
- ```[[ -z $c ]] ; echo $?``` will test `c` string variable if it is null or empty result 0 (true)
- ```[[ -n $c ]] ; echo $?``` will test `c` string variable if it is null or empty result 1 (false)

#### File Test Operators

- ```[[ -e today.txt ]] ; echo $?``` will test if today.txt file **exists**, print result 1 (false), as file not exists.
- ```[[ -f today.txt ]] ; echo $?``` will test if today.txt is a **regular file**, print result 1 (false).
- ```[[ -d today.txt ]] ; echo $?``` will test if today.txt is a **directory**, print result 1 (false).
- ```[[ -x today.txt ]] ; echo $?``` will test if today.txt file **exists and has execution permissions**, print result 1 (false).
- ```-r``` is file readable, ```-w``` is file writable, ```-nt``` is file newer than.

### If Statements

- If statements **start** and **end** using the reserved words **if** and **fi**
- If statements check the exit status of a command
- If statements only run code if a certain condition is **true**

#### If Notes

- You can NOT put an **elif** after an else
- There is no limit on amount of elif statements you can have
- You can put if statements inside other if statements

#### If AND - OR Chainings

- Chaining commands chain together multiple test constructs to create more powerful conditions

### Case Statements

- Case statements **start** and **end** using the reserved words **case** and **esac**
- ```case "$number"``` if you use case statement you MUST put double quotes ```"``` and ```$``` dollar sign
- ```)``` use close paranthesis in order to tell bash case condition end
- ```;;``` use double semi colons in order to tell bash case condition's output end
- ```*)``` is the default case condition