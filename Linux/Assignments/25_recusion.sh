<<comments
date:26/10/2020
name:Sahana S S
Discription:a script to use recursive function to print each arguments
input :./25_recursion.sh 1 2 3 4
output :
1
2
3
4

comments

#!/bin/bash
#array to store all the elements passed in command line
array=($@)

#recursion function to print the elements that are passed through command line
recursion()
{
	if [ ${#array[@]} -gt 0 ]
	then
		echo ${array[0]}
		array=(${array[@]:1:${#array[@]}})
		recursion
	fi
}

#if argument are passed from the command line it calls the function
if [ $# -gt 0 ]
then
	array=($@)
	recursion $array
else
	#if no argument is passed print the error message
	echo Error:pass the argument througth the command line
	echo usage: ./25_recursion.sh 1 2 3 4
fi
