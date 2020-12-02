<<comments
Name:Sahana S S
Description:write a script to  disply the longest and shotest user name on the system
Input:
Output:the longest name is :   speech'dispatcher
       the shortest name is :  lp
comments

#!/bin/bash
#to store all the names of the user in the array
user=(`cat /etc/passwd | cut -d ":" -f1`) 
echo ${user[@]}
length=${#user[@]}
#intialising the small and large in the first username
small=${#user[0]}
large=${#user[0]}

#the string length of the user is compared and print the largest user and smallest user
for i in `seq 1 $(($length-1))`
do
	if [ ${#user[$i]} -gt $large ]
	then
		large=${#user[$i]}
		largest=${user[$i]}
	fi
	
	if [ ${#user[$i]} -lt $small ]
	then
		small=${#user[$i]}
		smallest=${#user[$i]}
	fi
done
echo largest user is $largest 			#to print the largest user
echo smallest user is $smallest			#to print the smallest user
