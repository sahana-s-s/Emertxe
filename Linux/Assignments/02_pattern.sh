<<comments
Date:09/10/2020
Name:Sahana S S
Description:To print a pattern
input:4
output:
1
2 3
4 5 6
7 8 9 10
comments

#!/bin/bash
read n					#read a value from user
k=1					#k is assigned to 1
if [ $n -le 2 ]				#if the condition is less than 2 enter the valid input
then
	echo "enter the valid input"
else
for rows in `seq 1 $n` 			#to run the outter loop from the sequence 1 to n
do
	for col in `seq 1 $rows` 	#to run the inner loop 
	do
		echo -n "$k " 		#to print the k
		k=$(($k+1)) 		#k value is incremented
	done
	echo 				#to go to new line
done
fi
