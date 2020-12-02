<<comments
Date:14/10/2020
Name:Sahana S S
Description:Write a script to sort a given number in ascending and descending order
Input: -a 5 4 6 2 3 8 9 7 1
Output: Ascending order of array 1 2 3 4 5 6 7 8 9
comments

#!/bin/bash
for arg in $@ 		#The argument is passed in the loop
do
argarray=($@) 		#argarray is initialize
done
if [ $# -eq 0 ]		#script exit or not
then 
	echo "Error : please pass the argument through command line."
	echo ./13_sorting -a/-d 4 23 5 6 3
else
	case $1 in 
		-a)	#to sort in ascending order

for i in `seq 1 $#`    	#number of passes
do
	for j in `seq 1 "$(($#-$i-1))"` #number of comparision in each pass
	do
		if [ ${argarray[$j]} -gt ${argarray["$(($j+1))"]} ]
		then
			#to swap the element in ascending order
			temp=${argarray[$j]}
			argarray[$j]=${argarray["$((j+1))"]}
			argarray["$((j+1))"]=$temp
		fi
	done
done
echo Ascending order of array is ${argarray[@]:1:$#}
;;
  -d)			#to sort in desending order

for i in `seq 1 $#`	#number of passes
do
	for j in `seq 1 "$(($#-$i-1))"`	#number of comparision in each pass 
	do
		if [ ${argarray[$j]} -lt ${argarray["$(($j+1))"]} ]
		then
			#to swap the element in descending order
			temp=${argarray[$j]}
			argarray[$j]=${argarray["$(($j+1))"]}
			argarray["$(($j+1))"]=$temp
		fi
	done
done
	echo  Descending order of array is ${argarray[@]:1:$#}
	;;
*)
echo  Error:Please pass the choice.

esac
fi

