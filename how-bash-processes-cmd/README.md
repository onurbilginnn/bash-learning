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

 - ```echo 1 2 3``` -> Word "echo" is **command name**, "1 2 3" are **individual arguments** for the command. Terminated by invisible newline control operator.

All simple commands are terminated by as control operator.

- ```echo a b c echo 1 2 3``` -> will print ```a b c echo 1 2 3``` as there is no parameter.
- ```echo a b c; echo 1 2 3``` -> will print 
```
a b c
1 2 3
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