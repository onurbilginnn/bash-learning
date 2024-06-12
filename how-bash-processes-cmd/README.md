### Bash Command Line Interpretation Steps

1 - Tokenisation;

**token** is a sequence of characters that is considered as a "single unit" by the shell. <br>
Shell looks for "Metacharacters" in order to understand where token starts ends. <br>
Metacharacters -> ```| & ; ( ) < > space tab newline``` <br>

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

2 - Single Quotes ```' '``` removes special meaning from all characters inside

3 - Double Quotes ```" "``` removes special meaning from all except dollar signs ```$``` and backticks``` ` ```