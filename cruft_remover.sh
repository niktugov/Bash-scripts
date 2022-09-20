#---------------------------------------------------------------------------
# Script promts you to remove all files in a specific folder that have not
# been modified within a given number of days
#
# Created by Nikolai Tugov
#---------------------------------------------------------------------------

#!/bin/bash

# Promts you to remove all files in a specific folder that have not
# been modified within a given number of days

read -p "Which folder do you want to remove unmodified files from?: " folder
read -p "How many days is too old?: " days

readarray -t files < <(find "$folder" -maxdepth 1 -type f -mtime "+$days")

for file in "${files[@]}"; do
	rm -i "$file"
done
