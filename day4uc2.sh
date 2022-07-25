#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if (( $isPresent == $randomCheck ))
then
	empRatePerHr=20
	emopHrs=9
	salary=$(($empRatePerHr*$emopHrs))
	echo "Employee is present and its salary is $salary"

else
	salary=0
	echo "Employee is absent and its salary is $salary"
fi
