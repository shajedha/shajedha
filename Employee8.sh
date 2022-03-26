#! bin/bash -x

EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
TOTALSALARY=0;
 empRatePerHr=30;
 numworkingdays=30;
for(( day1; day<=$numworkingdays; day++ ))
do
 empCheck=$((RANDOM%3))

case $empCheck in
     $EMP_FULL_TIME_HR)
       empHrs=20
        ;;
     $EMP_PART_TIME_HR)
        empHrs=0
         ;;

     *)
      empHrs=0
         ;;
   esac
salary=$(( $empHrs + $empRatePerHr ));
TOTALSALARY=$(( $TOTALSALARY + $salary ));
 done


