<<comments
Name:Sahana S S
Description: Write a script to display the names of any file-system which have less than 10% free space available
Input: ./29_free_space.sh
Output: ./29_free_space.sh
Filesystem /dev/sda5 have less than 10% freespace
comments
#!/bin/bash
#filesystem names are stored into an array
Filesystem=(`df | tr -s " " | cut -d " " -f1`)
#getting used percentage into array and deleting % from each element in the array
used_percentage=(`df | tr -s " " | cut -d " " -f5 | tr -d %`)
#to  calculating the number of element in the array
len=${#Filesystem[@]}
#for loop that iterates till the length of array
for i in `seq 1 $(($len-1))`
do
	if [ ${used_percentage[$i]} -lt 10 ] #checks whether the filesytem has less than 10 percent and print the message
	then
	echo Filesytem ${Filesytem[$i]} have less than 10% space
	fi
done	
