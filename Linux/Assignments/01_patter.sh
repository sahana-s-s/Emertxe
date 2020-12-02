<<comments
Date:09/10/2020
Name :Sahana S S
Description:To print the pattern by reading n value 
input:4
output:
1
1 2
1 2 3 
1 2 3 4
comments

#!/bin/bash
echo enter the value of n
read n       				 #read n from user
if [ $n -le 2 ]                          #if the condition is less than 2 print invalid
then
	echo "invalid number to print the pattern"
else
for rows in `seq 1 $n`			 #to iterate through rows from sequence 1 to n to run outter loop
do
	for col in `seq 1 $rows` 	 #to iterate through columns to run inner loop
	do
		echo -n "$col "	 
	done
	echo   
done
fi

