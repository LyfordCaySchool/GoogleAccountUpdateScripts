#!/bin/bash

USERS_FILE="${1}"
USER_OU="${2}"


IFS=,
/bin/cat "${USERS_FILE}" | while read SALUTATION FIRST_NAME LAST_NAME EMAIL TEMP_PASSWORD EXT_EMAIL OLD_SENT; do

# echo $FIRST_NAME $LAST_NAME $EMAIL $TEMP_PASSWORD $USER_OU
	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
		update \
		user "${EMAIL}" \
		password "${TEMP_PASSWORD}" changepassword yes
	echo "updated ${EMAIL}"

done

