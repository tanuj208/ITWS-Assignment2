#!/bin/bash
ping -c $1 google.com | xargs -L 1 -I {} date '+%A %b %d %T IST %Y {}' | while read m
do 
	echo -e "\033[38;05;${number}m $m"
	let number++
	if [ $number -eq 10 ]
	then 
		let number=1
	fi 
done

