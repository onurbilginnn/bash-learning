### Bash Command Line Interpretation Steps

1 - Tokenisation;

**token** is a sequence of characters that is considered as a "single unit" by the shell. <br>
Shell looks for "Metacharacters" in order to understand where token starts ends. <br>
Metacharacters -> ```| & ; ( ) < > space tab newline``` <br>

Types of tokens;

**word** is a token that does NOT contain an "unquoted" metacharacter.

**operator** is a token that contains at least 1 "unquoted" metacharacter.

2 - Command Identification;

**Simple commands** are just a bunch of individual words, and each simple command is terminated by a control operator.

**Compound commands** provide bash with its programming constructs, as if statements, for loops, while loops etc.

3 - Expansions;

4 - Quote Removal;

We often add quotes to control how the command is interpreted, so this step will simply remove all those supportive quotes.

5 - Redirection;

```diff
+ After completing these 5 steps, bash will then execute the command line that is left over.
```
#### Quoting

Quoting is about **Removing Special Meanings**

##### Quoting Types

1 - Backslash ```\``` removes special meaning from **next** character

2 - Single Quotes ```' '``` removes special meaning from all characters inside, they can NOT contain single quote ```'```

3 - Double Quotes ```" "``` removes special meaning from all except dollar signs ```$``` and backticks``` ` ```

- ```echo john & jane``` will return error
- ```echo john \& jane``` will show ```john & jane```
- ```filepath=C:\\Users\\onurbilgin\\Documents``` ```echo $filepath``` will show ```C:\Users\onurbilgin\Documents```
- ```filepath='C:\Users\onurbilgin\Documents'``` ```echo $filepath``` will show ```C:\Users\onurbilgin\Documents```
- ```filepath="C:\Users\\$USER\Documents"``` ```echo $filepath``` will show ```C:\Users\onurbilgin\Documents```, escape backslash used for ```$``` sign

#### Tokenisation

**Metacharacters** are like **punctuation**.

The diff for a token that is interpreted as a **word** or **operator** is **unquoted metacharacter**.

##### Types of Operators

1 - Control operators -> ```newline | || & && ; ;; ;& ;;& |& ( )```
2 - Redirection operators -> ```< > << >> <& >| <<- <> >&```

Control operators + Redirection operators only matter if they are **unquoted**.

- ```echo $name > out.txt``` Metacharacters in this text: 3 spaces, greater than sign ```>``` -> redirection operator; "echo" "$name" "out.txt" are words are in this text.

#### Command Identification

##### Command Types

1 - Simple commands (most common);

Just a list of words seperated by spaces and terminated by either a newlne or one of the other control operators available in bash.

The first word of a simple command is interpreted as the **command name**, and the **following words** are interpreted as **arguments** to that command.

 - ```echo 1 2 3``` -> Word "echo" is **command name**, "1 2 3" are **individual arguments** for the command. Terminated by invisible newline control operator.

All simple commands are terminated by a control operator.

- ```echo a b c echo 1 2 3``` -> will print ```a b c echo 1 2 3``` as there is no operator.
- ```echo a b c; echo 1 2 3``` -> will print 2 seperate lines with 1 line command thanks to ```;``` operator
```
a b c
1 2 3
```
2 - Compound commands; are essentially bash's programming constructs.

Each compound command starts with a **reserved word** and is ended by a corresponding **reserved word**

- Compound command can be written over multiple lines;
```
if [[2 -gt 1]]; then
echo "hello world"
fi
```

#### Expansions

Expansions in earlier **stages** are performed first.

You can NOT do;
```
x=10
echo {1..$x}
```

Expansions that are in the same stage are all given the same priority, and are simply performed in the order thay are found on the command line when it is read from left to right.
```
echo $name has $(( 1 + 2 )) apples
```

```echo $name has {1..3} apples and $(( 5 + 2)) oranges``` brace expansion will execute first.

```echo $name{1..3}.txt``` will print .txt .txt .txt because brace expansion comes before parameter expansion

##### Expansion Stages

- Stage 1: Brace Expansion

- Stage 2: 
  - Parameter Expansion
  - Arithmetic Expansion
  - Command Substitution
  - Tilde Expansion

- Stage 3: Word Splitting <br>
A process the shell performs to split the result of some **unquoted** expansions into seperate words.
  - Word splitting is only performed on the results of **unquoted**:
    - Parameter expansions
    - Command substitutions
    - Arithmetic expansions
  - The characters used to split words are governed by the **IFS**(Internal Field Separator) ```$IFS``` variable.
    - Space, tab and newline
  - ```echo $IFS``` will show blank lines.
  - ```echo ${IFS@Q}``` will show ```$' \t\n'``` representative characters for space, tab, newline.
  - ```numbers=1 2 3 4 5``` -> ```touch $numbers``` will create 5 individual files named 1 - 2 - 3 - 4 - 5
  - ```numbers=1 2 3 4 5``` -> ```touch "$numbers"``` will create 1 file named '1 2 3 4 5', because of ```"``` double quotes
  - ```numbers=1,2,3,4,5``` -> ```touch "$numbers"``` will create 1 file named '1,2,3,4,5'
  - ```IFS=","``` -> ```numbers=1,2,3,4,5``` -> ```touch "$numbers"``` will create 5 individual files named 1 - 2 - 3 - 4 - 5, because IFS parameter defined to ',' comma, bash will seperate numbers variable as 1 - 2 - 3 - 4 - 5

```diff
+ If you want the output of a parameter expansion, arithmetic expansion and command substitution
+ to be considered as a single word: Wrap that expansion in " double quotes!
```

- Stage 4: Globbing
  - Originates from "glob" program present in early versions of **Bell Lab's Unix** operating system from 1969-19675.
  - Globbing is used as a shortcut for listing the files that a command should operate on.
  - Globbing is only performed on **words** (NOT operators)
  - Globbing **patterns** are words that contain unquoted **Special Pattern Characters**:
    - * -> Zero or more occurences of any character
    - ? -> Any single character, at least 1 character required
    - [] -> Any character between square brackets required -> file[abc] -> filea, fileb, filec
  - ```ls *.txt``` will list all txt files in the folder
  - ```ls file?.txt``` will list all file(any character).txt; file**a**.txt, file**z**.txt, file**q**.txt, etc...
  - ```ls file???.txt``` file**wza**.txt, file**ztu**.txt, file**qhg**.txt, etc...
  - ```ls file[ab].txt``` filea.txt or fileb.txt
  - Any command can be used instead of ```ls```

#### Quote Removal

During quote removal, the shell removes all ***unquoted*** backslashes, single quote characters, and double quote characters that did NOT **result from a shell expansion**. 

- 3 types of quotes
  - Backslashes: ```\```
  - Single Quotes: ```' '```
  - Double Quotes: ```" "```

- ```echo $HOME``` will print /USERS/<username>
- ```echo \$HOME``` will print ```$HOME```, ```\``` backslash removed during quote removal
- ```echo '\$HOME'``` will print ```\$HOME```, single quotes removed during quote removal

#### Redirection

- Data Streams
  - Stream 0 = Standard Input (stdin); provides us with an alternate way of providing input to a command, aside from using command line arguments.
  - Stream 1 = Standard Output (stdout); contains the data that is produced after a successful command execution.
  - Stream 2 = Standard Error (stderr); contains all error messages and status messages that a command produces.

stdin -> 0 -> Command 1 -> stdout
stdin -> 0 -> Command 2 -> stderr
(Keyboard)              (Terminal)
                    
- ```echo "this is some output" > output.txt``` will create output.txt and write the sentence inside double quotes but not print the sentence on terminal.
- ```cd /root > error.txt``` will create error.txt and write the error in it, but also print the error because stderr is seperate stream than stdout.
- ```cd /root 2> error.txt``` will create error.txt and write the error in it, but NOT print
- ```cd /root &> /dev/null``` will redirect error message to /dev/null in which everything will be deleted immediately.

- ```>``` for stdout, ```2>``` for stderr, ```&>``` for stdout and stderr
- ```>``` 1 arrow means that the contents of the destination file will be deleted, before writing the output or the error to the file.

- ```>>``` for stdout, ```2>>``` for stderr, ```&>>``` for stdout and stderr
- ```>>``` 2 arrows mean that the output or the error will be appended to the destination file, contents won't be deleted.

### Example

```1st example
#!/bin/bash
IFS="."
name="Onat.Bilgin"
out="output.txt"
echo "$name" > "~/$out"
```

- 1 Tokenization; words: echo, $name, $out, operators: ```>```
- 2 Command identification; ```echo >``` command with redirection operator
- 3 Expansions; 
  - stage 2; two parameter expansions will be resolved $, tilde expansion won't be resolved because it is quoted so won't be seen as an expansion
  - stage 3; as we put $name parameter in double quotes the ```.``` inside it will NOT be resolved as word splitting, because it is quoted.
- 4 Quote Removal; removing double quotes
- 5 Redirection; 1 arrow redirection for stdout
- To be able to add tilde expansion and word splitting; fixed command is as below
- ```echo $name > ~"/$out"```

