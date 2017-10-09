#!/bin/bash
num=( $@ )
for ((i=0;i<$#;i++))
do	
	for((j=($i);j<$#;j++))
	do
		if [ ${num[$i]} -gt ${num[$j]} ]
		then
			t=${num[$i]}
			num[$i]=${num[$j]}
			num[$j]=$t
		fi
	done
	echo -n "${num[$i]} "
done
echo
