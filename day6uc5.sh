#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
totalsalary=0

for (( i=1; i<=$numOfWorkingDays; i++ ))
do 
	randomCheck=$(($RANDOM%3))
	case $randomCheck in
				$isPartTime )
					empHrs=4
				;;
				$isFullTime )
					empHrs=8
				;;
				* )
					empHrs=0
				;;
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalsalary=$(($totalsalary+$salary))
	echo $i
done
echo "Your Salary is $totalsalary"
