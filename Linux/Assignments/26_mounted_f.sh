<<comments
Date:22/10/2020
Name:Sahana S S
Description:Write a script to determine whether a given file system or mount point ismounted
Input:./27_mounted_fs.sh /dev/sda2
Output:file system /dev/sda2 is mounted on / and it is having 98% used space with 3298220 KB free
comments
#!/bin/bash
#store all the data in the array
Filesystem=(` df -h | tr -s "" | cut -d " " -f1 `)
size=(`df -h | tr -s " " | cut -d " " -f2`)
used=(`df -h | tr -s " " | cut -d " " -f3`)
available=(`df -h | tr -s " " | cut -d " " -f4`)
used_percentage=(`df -h | tr -s " " | cut -d " " -f5`)
mounted_on=(`df -h | tr -s " "| cut -d " " -f6`)
length=${#Filesystem[@]}
count=0
#prints the error message if no argument is passed
if [ $# -eq 0 ]
then
	echo Error:Please pass the name of the file_system through command line
else
	for i in `seq 1 $(($length-1))`
	do
		if [ "$1" == "$(Filesystem[$i])" ]
		then
			echo file system ${filesystem[$i]} is mounted on ${mounted_on[$i]}  and  it is having ${used_percentage[$i]} used space with ${used[$i]} free
			count=$(($count+1))
		fi
	done
	#to print the message if the file system is not mounted
	if [ $count -eq 0 ]
	then 
		echo $1 is not mounted
	fi
fi

