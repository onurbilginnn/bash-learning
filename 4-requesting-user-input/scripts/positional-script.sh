#!/opt/homebrew/bin/bash

echo "Hello my name is $1"
echo "My home directory: $2"
echo "My fav color: $3"
echo "10th arg: ${10}"
echo "10th arg: $11" # Will show "<first_argument>1"
echo "11th arg: ${11}" # Will show 11th argument

echo "count of positional parameters: $#"
echo "name of the script: $0"

# $1="monthly report" $2="yearly feedback"
echo "create files by the values of the positional parameters:"
# Will create 4 files from positional parameters as monthly, report, yearly, feedback 
# touch $@
echo "create files by double quoting the positional parameter values"
# Will create 2 files as monthly report, yearly feedback
# touch "$@"
IFS=,
echo positional parameters: $*
echo positional parameters by comma: "$*"
# $1=1 $2=2 $3=3
echo "create file from positional parameters:"
# Will create 1,2,3 named file
touch "$*"
exit 0