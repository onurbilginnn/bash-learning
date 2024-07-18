#!/opt/homebrew/bin/bash

while getopts "a:b:" opt; do
  case "$opt" in
    a) echo "option a entered: Argument: $OPTARG";;
    b) echo "option b entered: Argument: $OPTARG";;
    \?);;
  esac
done

exit 0
