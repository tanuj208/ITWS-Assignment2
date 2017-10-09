#!/bin/bash
arr=( $@ )
for ((i=0;i<$#;i++))
do
	let max=${arr[$i]}
	for((j=($i+1);j<$#;j++))
	do
		if [ $max -ge ${arr[$j]} ]
		then
			let a=$max
			let max=${arr[$j]}
			let b=$j
		fi
	done
	let arr[$b]=${arr[$i]}
	let arr[$i]=$max
done
	echo -n ${arr[*]}
echo
