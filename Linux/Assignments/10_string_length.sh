<<comments
Date:16/10/2020
Name:Sahana S S
Description:Write a script to print each and every line using array
Input:hello hai how are you ?
Output:
length of string (hello) -5
length of string (hai) -3
length of string (how) -3
length of string (are) -3
length of string (you) -3
length of string (?)   -1

comments
#!/bin/bash
if [ $# -eq 0 ]  	#to check wheather the argument is passed or not
then 
	echo " please pass the arguments"
fi
declare -a array=("$@") #to declare an array
for i in "${array[@]}"  #to declare size of array
do
	echo " length of string ($i) - ${#i} " #to print the length of the string
done
