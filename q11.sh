#!/bin/bash
for ((i=1;i<=10;i++))
do
	expr $i \* $i
done 
for ((j=1;j<=10;j++))
do
	c=1
	for((k=1;k<=$j;k++))
	do
		let c=$c\*$j
	done
	echo $c
done
a=1
b=2
while [ $b -le 100 ]
do
	c=$b
	let b=$a+$b
	let l=$b%2
	if [ $l -eq 1 ]
	then
	echo $b
	fi
	a=$c
done
	


