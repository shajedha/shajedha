#! bin/bash -x
EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
 empRatePerHr=30;
 numworkingdays=40;
 MAX_WORKING_HRS=20;
 totalsalary=0
 day=1
 totalworkingHrs=0
 empHrs=0
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
function getEmpwage() {
empHrs=$1
echo $(( $empRatePerHr * $empHrs ))
}
while [[ $day -le $numworkingdays && totalworkingHrs -le $MAX_WORKING_HRS ]]
do
 empHrs="$( getempHrs $((RANDOM%3)) )"
 totalworkingHrs=$((totalworkingHrs + empHrs))
if [[ $totalworkingHrs -gt $MAX_WORKING_HRS ]]
then
$totalworkingHrs=$((totalworkingHrs -empHrs))
break
dailywage[$day]=$(getEmpwage$empHrs)
((day++))
done
echo "${dailywage[@]}"
echo "$totalsalary=$totalsalary"
 salary=$(( $empRatePerHr + $empHrs ))
 echo "Day $day=$salary totalsalary =$totalsalary"
((day++))
echo "totalsalary= $totalsalary"
  done
echo"totalsalary= $totalsalary"






