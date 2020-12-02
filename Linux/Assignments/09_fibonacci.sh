<<comments
Date:16-10-2020
Name:Sahana S S
Description:A script to generate Fibnonacci numbers<=n
Input:enter any positive number.
output:eg:0,1,1,2,3,5,8...
comments

#!/bin/bash
echo enter the n 
read n
#assigned the value of num1=0 and num2=1
num1=0  
num2=1
nextnum=0
count=0
if [ $n -eq 0 ]                                #to checks whether the argument is passed or not.
then 
	echo -n $num1
elif [ $n -lt 0 ]                              #to checks whether the argument is positive number or not
then 
	echo Error :Please enter only positive numbers.
else
	echo -n $num1 #to print num1 
	echo -n $num2 #to print num2
	while [ $count -le $n ]                #to print the fibnonacci number upto to nth term
	do
		nextnum=$((num1+num2))         #to print the next number
		#to update the number
		num1=$num2		
		num2=$nextnum
		count=`expr $count + 1`
		if [ $n -ge $nextnum ]
		then
			echo -n $nextnum
		fi
	done

	

fi     
       

