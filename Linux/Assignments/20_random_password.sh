<<comments
Date:20-10-2020
Name:Sahana S S
Description:A script for generating random 8 character passwords including alpha numeric characters.
Input:
Output:eg: nh@Rh0pv
comments
#!/bin/bash
for i in 'seq 1 10'                                  #iterating throuh for loop from 1 to 10
do
	cat /dev/urandom | tr -cd [:print:] | head -c8  #to print 8 characters.
	echo
done

