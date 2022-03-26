
 GNU nano 5.9                                                                              Employee3.sh
#! bin/bash -x

EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
 empRatePerHr=30;
randomCheck=$((RANDOM%3))
if [ $EMP_FULL_TIME_HRS -eq $randomCheck ]
then
empHrs=10;
elif [ $EMP_PART_TIME_HR -eq $randomCheck ]
then
empHrs=8;
else
empHrs=0;
fi


