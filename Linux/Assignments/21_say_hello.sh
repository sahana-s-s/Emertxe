<<comments
Name:Sahana S S
Description:write a script called say_hello,which will print greeting based on time
Input:when we start shell(whenever you opening new tab or terminal the current date and time with the message should be printe:d
Output:
Good morning user,Have nice day!
this is thurday 08 in june of 2020 (10:44:10 AM)
comments
#!/bin/bash
hour=`date +%H`                          #Command to find date in 24 hour format
if [ $hour -ge 5 -a $hour -lt 12 ]       #if the condition is 5AM to 12PM print good morning
then
	echo "Good morning `whoami`, Have a nice day!"
	echo "This is `date +%A` `date +%d` in `date +%B`of `date +%Y`(`date +%r | cut -d " " -f1-2`)"
elif [ $hour -ge 12 -a $hour -le 13 ]   #if the condition is 12PM TO 1PM Print good noon
then
	echo "Good noon `whoami`, Have a great day ahead!"
	echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y`(`date +%r | cut -d " " -f1-2`)"
elif [ $hour -ge 14 -a $hour -lt 17  ]  #if the condition is 1PM to 5PM Print good afternoon
then
	echo "Good afternoon `whoami`,Have a nice day!"
	echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y`(`date +%r | cut -d " " -f1-2`)"
elif [ $hour -ge 17  -a $hour -lt 21 ]  #if the condition is 5pm to 9pm print good evening else good night
then
	echo "Good evening `whoami`, Have a wonderful evening!"
	echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y`(`date +%r | cut -d " " -f1-2`)"
else
	echo "Good night `whoami`,have a sweet dreams"
	echo "This is `date +%A` `date +%d` in `date +%B` of `date +%Y`(`date +%r | cut -d " " -f1-2`)"
        
fi


