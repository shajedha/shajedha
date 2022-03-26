#! bin/bash -x

EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
MAX_HRS_IN_MONTH=10;
 empRatePerHr=30;
 numworkingdays=30;
totalEmpHr=0;
totalworkingdays=0;
while[[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt $numworkingdays ]]
do
(( totalworkingdays++ ))

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
else
totalEmpHr=$(( $totalEmpHr * $empHrs ));
esac
  done
totalsalary=$(( $totalEmpHr=$empRatePerHr ));


