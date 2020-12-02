<<comments
Name:Sahana S S
Discription:write a script to lock down the permission for a particular directort
Input: ./28_lock_permissions.sh Dir/
Output:
Before locking 
-rw-r--r-- 1 linux linux 137 oct 21 12:30
Dir/
After locking
-rw------- 1 linux linux 137 oct 21 12:30
Dir/
comments

#!/bin/bash

#if no arguments are passed from command line it prints error message
if [ $# -eq 0 ]
then 
	echo Error:Please pass the directory in command line
else
	#checking and printing the file permissions before locking
	echo Before locking
	ls -l $1
	#lock the permissions for group and others
	chmod -R go-rwx $1
	#checking and printing the file permisssions after locking
	echo Afterlocking
	ls -l $1
fi

