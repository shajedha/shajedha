#! bin/bash -x
EMP_PART_TIME_HR=4;
EMP_FULL_TIME_HRS=8;
 empRatePerHr=30;
 numworkingdays=40;
 MAX_WORKING_IN_MONTH=4;
totalworkingdays=0;
 totalworkingHrs=0

function getworkingHrs() {
case $1 in
     $EMP_FULL_TIME_HR)
       workingHrs=20
        ;;
     $EMP_PART_TIME_HR)
        workingHrs=0
         ;;

     *)
      workingHrs=0
         ;;
esac
echo $workingHrs

}
function getcalcdailywage() {
local workingHrs=$1
wage=${($working + $(empRatePerHr)}
echo $wage
}
while [[ $totalworkingHrs -lt $MAX_HRS_IN_MONTH && $totalworkingdays -lt numworkingdays ]]
do
{[totalworkingdays++]}
 empHrs="$( getworkingempHrs $((RANDOM%3)) )"
 totalworkingHrs=$((totalworkingHrs -$workingHrs))
empdailywage["$totalworkingdays"]=$(calcdailywage$empHrs)
done
totalsalary="$[ calcdailywage $totalworkHrs ]"
echo "dailywage"${empdailywage[@]}
echo "Allkeys"${empdailywage[@]}SS

