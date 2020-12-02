<<comments
Date:20/10/2020
Name:Sahana S S
Description:To write a script to rename the albums with the given name
Input:day_out
Output:
comments
#documentation 
#the script will rename the albums in the directory 
#validation
#if the user name is not passed it will print the eeror message
#if the user name is passed it will rename the line

#!/bin/bash
if [ $# -eq 0 ] 		#if no arguments is passed generates the error message
then
	echo Error:please pass the prefix name through command line
else
	a=1 			
	for i in *.jpg      #for loop to find the file in the directory
	do
		new=$(echo "$1_00$a.jpg") 	#renaming the file name with the name asked by the user
		mv "$i" "$new"
		a=`expr $a + 1`
	done
	echo all jpg files in the current directory are renamed 
fi
