#!/bin/bash

USERS_FILE="${1}"
# USER_OU="${2}"


IFS=,
/bin/cat "${USERS_FILE}" | while read FIRST_NAME LAST_NAME EMAIL TEMP_PASSWORD EXT_EMAIL USER_OU; do

# echo $FIRST_NAME $LAST_NAME $EMAIL $TEMP_PASSWORD $USER_OU
	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.65/src/gam.py \
		create \
		user "${EMAIL}" firstname "${FIRST_NAME}" lastname "${LAST_NAME}" \
		password "${TEMP_PASSWORD}" changepassword off org "${USER_OU}"
#		password "${TEMP_PASSWORD}" changepassword on org "${USER_OU}"
	echo "created ${EMAIL}"

done

