#! bin/bash -x
EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
 empRatePerHr=30;
 numworkingdays=40;
 totalsalary=2000;
day=1

function getempHrs() {
case $1 in
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
echo $empHrs
}

while( $day -le $numworkingdays )
do
 empHrs="$( $getempHrs $((RANDOM%3)) )"
 salary=$(( $empRatePerHr + $empHrs ))
 echo "day $day=$salary totalsalary =$totalsalary"
((day++))
echo "totalsalary= $totalsalary"
  done
echo"totalsalary= $totalsalary"

