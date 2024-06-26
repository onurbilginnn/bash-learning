### While Loops

- Run a set of commands while a certain condition is true

#### getops

- `getops "f:c:" opt` command will get options f or c and write it to opt variable
- `getops "Ab:bc:" opt` command will get options Ab or bc and write it to opt variable, getops is case sensitive
- `f:c:` bash will save the argument to `$OPTARG` variable
- `:` should only be there for options with arguments. <br>
Ex; `getops "abc" opt` command not require arguments for `-a`, `-b`, `-c` options. 
- For the options that are not supported put `\?)` in the case scope
Ex; `./<script-file> -c 55` -> $OPTARG will be 55 

### Read-While Loops

- Are while loops that use the read command as their test command
