#! bin/bash -x
EMP_RATE_PER_HOUR=20;
EMP_WORKING_HOUR=8;

DAILY_EMP_WAGE=$(( $EMP_RATE_PER_HOUR * $EMP_WORKING_HOUR ))
echo "Daily Employee Wage $DAILY_EMP_WAGE"
