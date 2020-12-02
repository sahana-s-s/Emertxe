<<comments
Date:12/10/2020
Name:Sahana S S
Description:To print the following statement
1.currently logged users
2.your shell directory
3.home directory
4.OS name and version
5.current working directory
6.Number of users logged in
7.Show all available shells in your system
8.Hard disk information
9.CPU information
10.Memory information
11.File system information
12.currently running process
Input:To choice the output from 1 to 12
enter the choice:2
Output:your shell directory is /bin/bash
comments
#!/bin/bash
##To print the statements
echo "1. currently logged users"
echo "2. your shell directory"
echo "3. Home directory"
echo "4. OS name and version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. CPU information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running process"
read n				 	#to read the value of n
if [ 1 -le $n -a 12 -ge $n ] 	        #To choice between 1 to 12
then
	#select case from 1 to 12
	case $n in
		1) echo currently logged user are 
			whoami
			;;
		2) echo Your shell directory is $SHELL
			;;
		3) echo Home directory is $HOME
			;;
		4) echo OS name and version
			uname -v
			;;
		5) echo current working directory
			pwd
			;;
		6) echo Number of user logged in
			w
			;;
		7) echo show all available shell in your system
			cat /etc/shells
			;;
		8) echo hard disk information is
			free -h
			;;
		9) echo CPU information is
			cat /proc/cpuinfo
			;;
		10) echo Memory information is
			cat /proc/meminfo
			;;	
		11) echo File system information
			df
			;;
		12) echo Currently running process
			ps -a
			;;
	esac
else
	echo enter the number from 1 to 12
fi
