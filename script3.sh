#!/bin/bash

#THIS IS A BASH SCRIPT THAT AUTOMATES DELETION OF FILES OLDER THAN 30DAYS IN A LOG FILE OR ANY FILE PATH GIVEN THROUGH AN AUGMENT ON THE COMMAND LINE.
# EXECUTE THE SCRIPT USING ./script.sh
#ALLOW EXECUTE PERMISSION USING Chmod +x script3.sh
#NEXT ADD THE FILE PATH TO BE DELETED AFTER 30DAYS TO THE EXECUTION COMMAND EXAMPLE: ./script4.sh /tmp/logfile.log


filepath="$1" #Augment
echo $filepath
find $filepath -mtime +30 -delete
if [$? -eq 0] #if exit code eqauals zero which means success
then
	echo "Log files older than 30 days were succesfully deleted"
else
	echo "Error Encountered!"
fi	

