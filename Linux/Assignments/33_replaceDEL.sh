<<comments
Name:Sahana S S
Description:Write a script to replace 20% lines in a c file randomly and replace it with the pattern <----del---->
Input: ./33_replace_DEL.sh main.c
Output:
comments

#!/bin/bash
if [ $# -eq 0 ]			#to check whether the argument is passed through the command line argument or not
then
	echo Error:Please pass the filename through command line
elif [ -f $1 ]			#to check whether the first argument passed is file or not
then
	echo before replacing
	cat $1
	echo after replacing
	line=`cat $1 | wc -l ` #stores the number of the files in the variables
	if [ $line -gt 5 ]	#to check the number of line present in file
	then
		percent=`echo "0.2*$line" | bc` 	#storing 20 percentage of total lines in the variable
		for num in `shuf -i 1-10 -n${percent}` #shuf command is for getting the random number between 1-10
		do
			#replacing the the randomly deleted files with the <----deleted------>
			sed -i "$num s/.*/<--------deleted----------->/" $1
			cat $1
		done
	else
		echo "Error:$1 is empty file . so can't replace the string."  #print the message if it is empty file
	fi
else
	echo Error:No such a file. #to print the error message no such file
fi
