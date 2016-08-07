#!/bin/bash

USERS_FILE="${1}"
# USER_OU="${2}"


IFS=,
/bin/cat "${USERS_FILE}" | while read EMAIL; do

# echo $FIRST_NAME $LAST_NAME $EMAIL $TEMP_PASSWORD $USER_OU
	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.65/src/gam.py \
		update \
		user "${EMAIL}" org "/Deactivated Students" suspended on
	echo "updated ${EMAIL}"

done
