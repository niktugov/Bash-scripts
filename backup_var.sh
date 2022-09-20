#---------------------------------------------------------------------------
# Script to make a backup of /var directory and send it to remote server
#
# Created by Nikolai Tugov
#---------------------------------------------------------------------------

#!/bin/bash

tar cvf /tmp/backup.tar /var
gzip /tmp/backup.tar

find backup.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? eq 0 ]
	then 
		echo backup was created
		echo
		echo archiving backup
#	        scp /tmp/backup.tar.gz username@192.168.0.X:/path
	else
		echo backup failed
fi
