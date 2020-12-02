<<comments
Name:Sahana S S
Description:Write a script to print 5th line of a file passes through command line
Input_1:file.txt
Output_1:fifth line of file.txt is line 5
Input_2:file1.txt
Output_2:Error:file1.txt having only 2 lines so can't print 5th line
Input_3:
Output_3:Error:please pass the file name in command line
Input_4:file2.txt
Output_4:No such file exit
comments

#!/bin/bash
if [ $# -eq 0 ]				 #to check whether the argument passed or not
then
	echo Error:Please pass the file name in command line.
elif [ `cat $1 | wc -l ` -lt 5 ]	#to check the condition whther it the file contain 5 lines or not
then
	echo Error:$1 having only ` cat $1 | wc -l` lines.so cant print 5th line
elif [ -f "$1" ] 			#to check whether the file passed is exit or not
then 
	head -5 $1 | tail -1 		#if the condition is true then it is in the 5th line
else
	echo Error:No such a file 	#else the error msg is passed
fi
