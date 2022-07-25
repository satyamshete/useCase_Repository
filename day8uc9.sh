#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorkHours(){
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

}
function getEmpWage(){
	echo $(($totalEmpHr*$empRatePerHr))
}
while [[ $totalEmpHr -lt $maxRateInMonth &&
    $totalWorkingDays -lt $numOfWorkingDays ]]
do
        ((totalWorkingDays++))
	echo $totalWorkingDays
        randomCheck=$(($RANDOM%3))
        getWorkHours $randomCheck
        totalEmpHr=$(($empHrs+$totalEmpHr))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done
totalsalary=$( getEmpWage $totalEmpHr)
echo ${dailyWages[@]}
echo $totalsalary
echo ${!dailyWages[@]}
echo ${#dailyWages[@]}
