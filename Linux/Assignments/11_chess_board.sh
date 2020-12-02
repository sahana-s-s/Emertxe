<<comments
Date:09/10/2020
Name:Sahana S S
Description:To print the pattern of chess board
Input:8
Output:
1 0 1 0 1 0 1 0
0 1 0 1 0 1 0 1
1 0 1 0 1 0 1 0
0 1 0 1 0 1 0 1
1 0 1 0 1 0 1 0
0 1 0 1 0 1 0 1
1 0 1 0 1 0 1 0
0 1 0 1 0 1 0 1
comments

#!/bin/bash
for rows in `seq 1 8 `  #To run the outter loop
do
	for col in `seq 1 8` #To run the inner loop
	do
		#To print white and black alternatively
		tot=` expr $rows + $col`
		tmp=` expr $tot % 2`
		if [ $tmp -eq 0 ] #if tmp variable is true it will print white color or else black
		then
			echo -e -n  "\e[47m" " " #To print white color
		else
			echo -e -n  "\e[40m" " " #To print black color
		fi
	done
	echo -e -n "\e[0m" " " #To make it normal
	echo  #To jump to new line
done

