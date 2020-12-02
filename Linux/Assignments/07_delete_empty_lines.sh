<<comments
Date:20/10/2020
Name:Sahana S S
Description: Write a script to delete empty lines
Input:
Output:
comments
#Documentation
#the programe should be able to delete all the empty line in the file

#!/bin/bash
if [ $# -eq 0 ] 		#if the argument is not passed print the error message
then
	echo please pass the file name through command line
	echo after this all the empty lines must be deleted
else
      cat $1 | tr -d '[:blank:]' | sed -i ' /^$/d ' file7.txt  #the command used to delete the empty line
	echo empty lines are deleted
fi
