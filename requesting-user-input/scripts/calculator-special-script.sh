#!/opt/homebrew/bin/bash

echo Calculation: $(( $@ ))
echo Calculation double quoted: $(( "$@" ))

exit 0