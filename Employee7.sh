
#! bin/bash -x

EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
 empRatePerHr=30;
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
