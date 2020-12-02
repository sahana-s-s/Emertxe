<<comments
Date:19-10-2020
Name:Sahana S S
Description:A script to rename a  file/directory replaces by lower/upper case letters.
Input:eg:File.txt MyScript.SH MyFile007.txt dir/Assign1/
Output:eg:file.txt myfile007.txt myscript.sh DIR/ASSIGN1/
comments
#!/bin/bash
#stores all the files of the current directory in the array.
array=(`ls | tr -s " " | cut -d " " -f1`)
length=${#array}
for i in `seq 0 $(($length -1))` #To run for through the total number of element in the array.
do
if [ -d "${array[$i]}" ] 
#checks whether the element in the array is directory and renames it to upper case letters
then 
	echo ${array[$i]} | tr [:lower:] [:upper:] > upper
	mv ${array[$i]} `cat upper`
elif [ -f "${array[$i]}" ] 
#checks whether the element in the array is file and renames it to lower case letters
then
	echo ${array[$i]} | tr [:upper:] [:lower:] > lower
	mv ${array[$i]} `cat lower`
fi
done
echo Files are rename in upper case and directories are rename in lower case

