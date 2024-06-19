### Debugging with shellcheck

- If you get the syntax wrong, your script won't work
- Shellcheck picks up on subtle syntax errors you have made in your script, and makes recommendations on your scripts
- Shellcheck will give advices after you fix syntax errors
- Please see [shellcheck site](https://www.shellcheck.net)
- You can install shellcheck in your system too, to be able to work locally, ex; servers that have no browser

#### Shellcheck Main Limitation

- Shellcheck can NOT detect issues with the environment that the script will be running in
  - If a specific file or folder exists
  - How permissions are setup
  - If a specific command or application is installed

### Error Messages

- ```ls 123``` -> ```ls: 123: No such file or directory``` -> ```<failed_command>:<cause_of_issue>:<reason_description>```

#### Common Errors

- Syntax errors
- No such file or directory
  - Mis-typed file path
  - Word splitting has interfered with how a file path is being interpreted
  - You need to ensure that the files/folders you want to work with actually exist before running your script
- File exists
- Permission denied or Operation not permitted
  - Most of the time you can use ```sudo``` before the script name you run
- Command not found

### Find Help

#### Type of commands

```type``` command will show you if a command is internal or external

- Internal commands are commands that are built into the bash shell
  - ```type -a cd``` will show you `cd` command is internal
- External commands are commands that are external to bash
  - ```type -a ls``` will show you `ls` command is external

- Three commands for getting information:
  - ```help``` command -> will give information about **internal** commands
    - ```help cd``` will show `cd` command information
    - ```help -d cd``` will show short description for `cd` command
    - ```help -s cd``` will show only available flags for `cd`
    - ```help help``` will show `help` command information
    - ```help``` will show all internal bash commands
  - ```man``` command -> short for manual, only for **external** commands
    - ```man ls``` will show `ls` command information
    - `q` will quit `man` info panel in terminal
    - ```man -k "list directory contents"``` command will only search for the word provided "list directory contents" in the text under the NAME section of the man page.
    - ```man -K partition``` will search the entire contents of the man page including the description section for that same key word "partition".
    - ```man man``` will show `man` command documentation
  - ```info``` command -> documentation for **external** commands, more detailed than man pages
    - ```info ls``` more detailed `ls` command page