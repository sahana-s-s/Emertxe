<<comments
Date:19-10-2020
Name:Sahana S S
Description:A script to convert string lower to upper and upper to lower.
Input:File name is given throgh the command line.
Output:Based on option it will covert lower to upper or upper to lower case
eg:WHAT IS OS?
WHAT ARE THE DIFFERENT OS?
WHEN IS OS USED?
WHAT IS PARTITION AND ITS USE?
HOW MANY PARTITIONS CAN BE DONE?
comments
#!/bin/bash
if [ $# -eq 0 ] #to check whether the argument is passed is not
then 
	echo Error :please pass the file name through command line.
elif [ -f "$1" -a `cat $1 | wc -l ` -lt 1 ] #to check the content is present or not
then
	echo Error: No contents inside the file
elif [ -f "$1" -a `cat $1 | wc -l` -gt 1 ]
then

	echo 1-Lower to upper
	echo 2-Upper to lower
	echo -n please select option:
	read n
	if [ $n -eq 1 ]
	then
		tail +1 $1 | tr '[a-z]' '[A-Z]' #lower case is converted to uppercase
	elif [ $n -eq 2 ]
	then
		tail +1 $1 | tr '[A-Z]' '[a-z]' #upper case is converted to lowercase.
	else
		echo "Error:Please enter 1 to convert from lower case to upper case or upper case to lower case"
fi
else
	echo "Error:File is not exist"
fi
