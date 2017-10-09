#!/bin/bash
read monthly_salary
annual_salary=`echo "$monthly_salary*12" | bc`
a=`echo "$annual_salary > 300000" | bc`
if [ $a -eq 1 ]
then 
	tax=`echo "scale=4;(3*$annual_salary)/10" | bc -l`
	# bc -l command for supporting decimal digits 
	echo TAX PAYMENT REQUIRED:$tax
else
	echo NO TAX PAYMENT REQUIRED
fi

