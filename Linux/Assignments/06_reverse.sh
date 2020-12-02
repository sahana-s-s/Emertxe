<<comments
Date:12/10/2020
Name:Sahana S S
Description:To write a script to print a reverse order
Input_1: 12345
Output_1: 54321
Input_2: 1540
Output_2: 451
Input_3: 5
Output_3: pass a multi-digit number
Input_4:
0utput_4: No argument passed
comments
#!/bin/bash
num1=$1 		
rev=0			#the value of rev is stored to 0
temp=0			#temp variable is assigened to 0
if [ $# -eq 0 ]		#script exit if no arrgument is passed
then 
	echo Error : No argument passed
elif [ `expr $1 / 10` -eq 0 ] 
then
	echo pass a multi digit number
else
while [ $num1 -ne 0 ] 	#condition to check the reverse of a number
do
	rem=`expr $num1 % 10`    #to extract last digit
	rev=`expr $rev \* 10 + $rem` #to store the pervious and current digit
	num1=`expr $num1 / 10` #to get next digit
done
echo $rev    		#to print the rev of a number
fi

