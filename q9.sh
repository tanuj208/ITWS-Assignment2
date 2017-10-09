#!/bin/bash
current_date=`date +%Y-%m-%d`
read name
read birth_date
current_month=`echo $current_date | cut -d "-" -f 2`
birth_month=`echo $birth_date | cut -d "-" -f 2`
current_day=`echo $current_date | cut -d "-" -f 3`
birth_day=`echo $birth_date | cut -d "-" -f 3`
current_year=`echo $current_date | cut -d "-" -f 1`
birth_year=`echo $birth_date | cut -d "-" -f 1`
if [ $current_month -eq $birth_month -a $current_day -eq $birth_day ]
# checking if it is the same day and month as birthday
then 
	let age=$current_year-$birth_year
	echo Happy Birthday, $name. You are $age years old today!
fi 

