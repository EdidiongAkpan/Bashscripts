#!/bin/bash

#THIS IS A BASH SCRIPT THAT AUTOMATES DELETION OF FILES OLDER THAN 30DAYS IN A LOG FILE OR ANY FILE PATH.

filepath="$1"
echo $filepath
find $filepath -mtime +30 -delete
if [$? -eq 0] #if exit code eqauals zero which means success
then
	echo "Log files older than 30 days were succesfully deleted"
else
	echo "Error Encountered! check your file path"
fi	

