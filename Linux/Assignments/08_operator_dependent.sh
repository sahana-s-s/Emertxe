<<comments
	Date:16-10-2020
	Name:Sahana S S
	Description:A script to perform arithymetic operation on digits of a given number depending upon the operator.
	Input:1234+
	Output: Sum is 10
	comments
	#!bin/bash
	var=$1
	len=${#var}                                                       
	operator=${var:$((len-1)):1}                                      #to know the number range
	
	if [ $# -eq 0 ] #to check whether the arguments passed or not.
	then
		echo Error: Please pass the argument.
		echo Usage: ./09_operator_dependent.sh 2345+.
	else 
		case $operator in #to perfom different operation.
			+)
				temp=${var:0:1}
				for i in  `seq 0 $(($len-3))`
				do
					temp=$(($temp+${var:$(($i+1)):1})) #to perform addtion operation.
				done
				echo sum is $temp 
				;;
			-)
				temp=${var:0:1}
				for i in `seq 0 $(($len-3))`
				do
					temp=$(($temp-${var:$(($i+1)):1})) #to perform sub is performed.
				done
				echo sub is $temp
				;;
			x)
				temp=${var:0:1}
			        for i in `seq 0 $(($len-3))`
				do
					temp=$(($temp*${var:$(($i+1)):1})) #to perform mul is performed.
				done
				echo mul is $temp
				;;
			/)
				temp=${var:0:1}
				for i in `seq 0 $(($len-3))`
				do
					temp=$(($temp/${var:$(($i+1)):1})) #to perform division is performed.
				done
				echo div is $temp
				;;
			*) #default case
			   echo Error:Operator missing.
			   echo Usage:./08_operator_dependent.sh 1111+.
				;;
		esac
			fi
