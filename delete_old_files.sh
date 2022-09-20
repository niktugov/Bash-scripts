#---------------------------------------------------------------------------
# Script to delete files older than 90 days
#
# Created by Nikolai Tugov
#---------------------------------------------------------------------------

#!/bin/bash

find /home/ntugov/bashscripts/test/ -mtime +90 -exec rm {} \;

# Rename old files 
#find /home/ntugov/bashscripts/test/ -mtime +90 -exec mv {} {}.old \;

