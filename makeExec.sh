#!/bin/bash
if [ $# -eq 0 -o $# -gt 1 ]
# $# stands for number of arguements
then
	echo Enter only one arguement
elif [ -f $1 ]
# if file exists and it is a regular file
then
	chmod u+x $1
else
	echo Regular file named $1 does not exist
fi
