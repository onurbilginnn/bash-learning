#!/bin/bash

while getopts "nf:" param
do
  case "$param" in
    n) file="$OPTARG" ;;
    f) set -x ;;
    /?);;
  esac
done

case "$file" in
  .gz) gzip -d "$file" ;;
  .zip) unzip "$file" ;;
  .tar.gz) tar xzf "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi
