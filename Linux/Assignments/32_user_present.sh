<<comments
Name:Sahana S S
Description:A script to search user present in your system. 
Input:xyz 
Output:xyz not present.
comments
#!/bin/bash
#store all the names of users in the array
username=(`cat /etc/passwd | cut -d ":" -f1`)
count=0
length=${#username[@]}    #finding the total number of users
if [ $# -eq 0 ]           #checks whether argument is passed or not.
then
	echo Error:Pass the arguments through command line.
else
	for i in `seq 0 $(($length-1))`
	do
		if [ "$1" == "${username[$i]}" ]
		then
			echo $1 is present
			count=$(($count+1))
		fi
	done
	if [ $count -eq 0 ]
	then
		echo $1 not present
	fi
fi

