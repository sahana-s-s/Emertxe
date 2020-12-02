<<comments
Date:12/10/2020
Name:Sahana S S
Description:To write a script to compare larger integer values from a'n' number of argument using command line argument
Input_1:5 6 7 8 9 
Output_1:largest element is 9
Input_2:9
Output_2:largest element is 9
Input_3:
Output:No argument passed
comments

#!/bin/bash
#to check the nmber of argument passed is zero
if [ "$#" -eq 0 ]   			#script exits if no argument passed
then
	echo "No argument passed"
	exit 1
fi
 
maxele=$1    				#the first argument is initialize to maxele 

for arg in "$@" 			#the loop that compares maxele with the passed argument and updates it
do  
	if [ "$arg" -gt "$maxele" ] 	#if the arg is greater than maxele the largest element is printed 
	then
		maxele=$arg
	fi
done
echo "largest element is $maxele"	 #to print the largest element
