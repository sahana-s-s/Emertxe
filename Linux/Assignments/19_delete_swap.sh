
<<comments
Name:Sahana S S
Description: delete all the swap files which are present in the directory or the system.
input:test_swp
output:swap file not found
comments
#!/bin/bash
#if no argument passed then delete all the swap files in home directory
if [ $# -eq 0 ]
then
	#store all swap files in home directory
	cd 
	find . -name "*.swp" > swapfiles
	array_swap=(`echo $swapfiles`)         #files saved in array
	if [ ${#array_swap[@]} -eq 0 ]         #check if swap files are there in array 
	then
		echo swap file not found 
	else
		echo swap file found 
		find . -name "*.swp"
		find . -name "*.swp" -delete      #if swap file present then it is deleted
	fi
else
	cd $1
	#store all swap files if directory passed in command line into array
	find . -name "*.swp" > swap files
	array_swap=(`echo $swapfiles `)
	if [ ${#array_swap[@]} -eq 0 ]
	then
		echo swap file not found 
	else
		echo swap file found
		find . -name "*.swp"
		find . -name "*.swp" -delete     #if swap file present then it prints then delete that swap file
	fi
fi
