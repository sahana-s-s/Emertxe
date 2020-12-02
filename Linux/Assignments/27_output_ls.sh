<<comments
Date:20/10/2020
Name:Sahana S S
Description:write a script to take any number of directories as command-line arguments and list the contents of each of these directories
Input:~
Output:
/home/user
Download Documents Desktop Music Pictures Public Videos
comments

#!/bin/bash

commands=($@) 		#to store the argument in the array
if [ $# -eq 0 ]	       	#if no argument is passed print the contents of the pwd
then
	pwd
	echo *
else

	for i in `seq 0 $(($#-1)) `  
do
	#to print the content of the directories from the argument passed from the command line
	if [ -d ${commands[$l]} ]
	then
		echo ${commands[$i]}
		cd ${commands[$i]}
		echo *
		echo
	else
		echo cannot access `${commands[$i]}`: no such file or directory #to print the error message if it is wrong path of the directory
	fi
done
fi

