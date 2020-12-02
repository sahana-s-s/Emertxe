<<comments
Date:20-10-2020
Name:Sahana S S
Description:A script to rename current working directory with given name
Input: eg:Assign2
Output:current directory will be renamed to Assign2
comments
#!/bin/bash
if [ $# -eq 0 ] #checks whether the arguments are passed or not.
then
	echo Error:Please pass the new directory name
	#if argument is passed then it will rename the current working directory.
else
	`pwd | tr "\" " " > array`
	array_pwd=(`cat array`)
	length=${#array_pwd[@]}
	mv "../${array_pwd[$length-1]}" "../$1"
	echo "current working directory will be renamed to $1"
fi
