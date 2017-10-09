#!/bin/bash
n=`df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | wc -l`
# counting number of disks
#df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 1 > name.txt
#df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 2 > space.txt
#this was stored in a file but now every time whenever it was used it is replaced.
for ((i=1;i<=n;i++))
do
	if [[ `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 2 | cut -d "%" -f 1 | head -n $i | tail -n 1` -le $1 ]]
	# checking if ith entry in space.txt (after removing % sign) is less than or equal to $1
	then
		echo "OK, `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 1 | head -n $i | tail -n 1`, `cat space.txt | head -n $i | tail -n 1`" 
	elif [[ `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 2 | cut -d "%" -f 1 | head -n $i | tail -n 1` -gt $1 && `cat space.txt | cut -d "%" -f 1 | head -n $i | tail -n 1` -lt $2 ]]
	# if ith entry of space.txt is between $1 and $2
	then
		echo "WARNING, `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 1 | head -n $i | tail -n 1`, `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 2 | head -n $i | tail -n 1`"
	else
	# if ith entry of space.txt is greater than or equal to $2
		echo "CRITICAL, `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 1 | head -n $i | tail -n 1`, `df | tr -s " " | cut -d " " -f 1,5 | grep /dev/ | tr -s " " | cut -d " " -f 2 | head -n $i | tail -n 1`"
	fi
done
