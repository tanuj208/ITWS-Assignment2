#!/bin/bash
txt=`find . -name "*.txt"`
n=`echo $txt | wc -w`
number=`echo $txt | xargs -n1 grep -l "$1" | wc -l`
for((i=1;i<=n;i++))
do
	name=`echo $txt | cut -d ' ' -f $i | cut -d "/" -f2`
	count=`cat $name | grep "$1" | wc -l`
	if [ $number -gt 0 ]
	then
		echo "$count lines in $name"
	else
		exit 1
	fi
done
