<<comments
Name:Sahana S S
Description:Write a script to count the number of the user IDs between 500 and 10000 on the system
Input:500 10000
Output:2
comments

#!/bin/bash
userid=(`cat /etc/passwd | cut -d ":" -f3`) #storing all the user IDs in the array
count=0
length=${#userid[@]}
echo -n ${userid[@]}		
#display the number of user id's between 500 to 10000
if [ $# -eq 0 ]
then
	for i in `seq 0 $(($length-1))`
	do
		if [ 500 -le ${userid[$i]} -a 10000 -ge ${userid[$i]} ]
		then 
			count=$(($count+1))
		fi
	done
	echo
	echo count is $count
#to display the number of the user IDs between the range asked by the user
else
	for i in `seq 0 $((length-1))`
	do
		if [ $1 -le ${userid[$i]} -a  $2 -ge ${userid[$i]} ]
		then
			count=$(($count+1))
		fi
	done
	echo
	echo count is $count
fi
