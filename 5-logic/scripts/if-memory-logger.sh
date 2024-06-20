#!/opt/homebrew/bin/bash

# Author: Onur Bilgin
# Date Created: 16 Jun 2024
# Last Modified: 16 Jun 2024

# Description
# Creates memory log in $HOME/performance/memory.log

# Usage
# In parent folder run ./scripts/if-memory-logger.sh on terminal

if [ -e ~/performance ]; then
        echo "~/performance directory exists!"
else
        mkdir ~/performance
        echo "~/performance directory created!"
fi

vm_stat >> ~/performance/memory.log

exit 0