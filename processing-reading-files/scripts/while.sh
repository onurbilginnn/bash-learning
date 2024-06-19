#!/opt/homebrew/bin/bash

read -p "Enter your number: " number

while [ $number -gt 10 ]; do
        echo $number
        number=$(( $number - 1))
done

exit 0