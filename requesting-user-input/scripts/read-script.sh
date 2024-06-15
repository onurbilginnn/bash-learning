#!/opt/homebrew/bin/bash

# read name age town # Directly gets 3 values and defines name age town variables
read -p "What is your name ? " name # Prompt What is your name ? and defines name variable
read -p "How old are you ? " age
read -p "Where are you from ? " town
echo "My name is $name"
echo "I am $age"
echo "I'm from $town"

read -t 5 -p "What are you doing ? " job # Timeout after 5 seconds, prompts What are you doing ?, defines job variable
echo "You are a $job expert"
read -s -t 5 -p "What is your password ? " password # -s will not show what input is written in terminal, but it still stores the value in password variable
echo "Your password is $password"

exit 0