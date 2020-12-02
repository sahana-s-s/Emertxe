<<comments
Date:14/10/2020
Name:Sahana S S
Description:TO Write a script to caculate BMI
Input:
Enter the weight in kg: 45.5
Enter the height in meter:1.5
Output:Your Normal
comments

#!/bin/bash
echo -n "Enter the weight in kg:"
read w					#to read the value of weight(W)
echo -n "Enter the height in meters:"
read h					#to read the value of height(h)
BMI=`echo $w/$h^2+$w%$h^2 |bc`          #Formula to calculate BMI
if [ `echo "$BMI<18.5" | bc` -eq 1 ]	#if condition to find weight less than 18.5 if the condition is true print your underweight
then
	echo your underweight
elif [ ` echo "$BMI>18.5 && $BMI<24.9" | bc ` -eq 1 ] #condition to find the weight greater than 18.5 and less than 24.9 if the condition is true print your normal
then
	echo your Normal
elif [ `echo "$BMI>25 && $BMI<29.9" | bc ` -eq 1 ]	#condition to find the weight greater than 25 and less 29.9 if the condition is true print your overweight 
then   
	echo your Overweight
else						#if condition not true print your obede
	echo your obese
fi



