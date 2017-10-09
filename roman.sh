#!/bin/bash
for ((i=1;i<=$1/100;i++))
do
	echo -n "C"
done
let a=($1/100)\*100
let b=$1-$a
let c=$b/50
if [ $c -eq 1 ]
then
	echo -n L
	let d=$c\*50
	let b=$b-$d
	let e=$b/10
	if [ $e -eq 4 ]
	then 
		echo -n XC
	fi
fi
let e=$b/10
if [ $e -eq 4  -a $c -eq 0 ]
then 
	echo -n XL
elif [ $e -lt 4 ]
then
	for ((j=1;j<=$e;j++))
	do
		echo -n "X"
	done
fi
let e=$e\*10
let b=$b-$e
let f=$b/5
if [ $f -eq 1 ]
then
	echo -n V
	let g=$f\*5
	let b=$b-$g
	if [ $b -eq 4 ]
	then
		echo -n IX
	fi
fi
if [ $b -eq 4 -a $f -eq 0 ]
then
	echo -n IV
elif [ $b -lt 4 ]
then
	for ((k=1;k<=$b;k++))
	do
		echo -n "I"
	done
fi
echo
