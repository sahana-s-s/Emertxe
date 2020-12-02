<<comments
Date:22/10/2020
Name:Sahana S S
Description:Write a script for each directory in the $PATH, display the number of executable files in that directory
Input:./32_eecutable_path.sh
Output:
current dir:/usr/local/sbin
current count:0
current dir:/usr/local/bin
current count:0
current dir:/usr/sbin
current count:205
current dir:/usr/bin
current count:1889
current dir:/sbin
current count:187
current dir:/bin
current count:159
current dir:/usr/games
current count:5
current dir:/usr/local/games
current count:0
Total-2445
comments
#!/bin/bash
#getting and storing the paths into a array
array_path=(`echo $PATH | tr ":" " " `)
total=0
#loop that iterates till the total number of elements in array
for i in ${array_path[@]}
do
	cd $i
	count=0
	echo Current dir:$i
	#loop that iterates through the path
	for j in *
	do
		#check whether file is executable or not
		if [ -x $i/$j ]
		then
			count=`expr $count + 1`
		fi
	done
	#count of files having executable files in each directory
	echo current count: $count
	#total count having executable files in the $PATH
	total=$(($total+$count))
done
echo total:$total

