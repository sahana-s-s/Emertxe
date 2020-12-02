<<comments
Date:14/10/2020
Name:Sahana S S
Description:write a script to print contents of file from given line number to next given number of lines
Input_1:5 3 myfile.txt
Output_1:
line number 5
line number 6
line number 7
Input_2: myfile.txt
Output_2:
Error :argument missing!
usage:./file_filter.sh stsrt_line uptoline filename
for eg. ./20_filr_filter.sh 5 5 <file>	 
comments
#!/bin/bash
if [ $# -lt 3 ] 						#to check whether the argument is passed or not
then
	#if the argument passed without the line then print the error message
	echo Error:argument missing!
	echo usage: ./file_filter.sh satrt_line uptoline filename
	echo for eq. ./20_file_filter.sh 5 5 file
elif [ -f "$3" -a ` cat $3 | wc -l ` -gt $1 ]                   #condition to print the given lines
then
	tail +$1 $3 | head -n $2 				#to the content of the file from given line number to next line
elif [ -f "$3" -a ` cat $3 | wc -l ` -lt $1 + $2 ]		#condition if for the error message to print if number of does not contain the user asked
then
	echo Error:$3 does not contain $5 th line to print
else
         echo Error:No such a file	
fi
