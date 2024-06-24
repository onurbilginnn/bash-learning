#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 22/06/2024
# Last Modified: 22/06/2024

# Description
# Will create performance log for internet connection, RAM, swap, disk usages

# Usage
# Will run in cron every hour

date '+%d-%h-%Y %H:%M:%S' >> performance.log

ping -c 1 google.com &> /dev/null 
 
if [ "$?" -eq 0 ]; then
 echo "Internet: Connected" >> performance.log
else
 echo "Internet: Disconnected" >> performance.log
fi

echo "RAM Usage :" >> performance.log
free -h | grep "Mem" >> performance.log

echo "Swap Usage :" >> performance.log
free -h | grep "Swap" >> performance.log

echo "Disk Usage :" >> performance.log
df -h >> performance.log
echo ""

exit 0