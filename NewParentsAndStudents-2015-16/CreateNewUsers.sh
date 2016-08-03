#!/bin/bash

USERS_FILE="${1}"
USER_OU="${2}"


IFS=,
/bin/cat "${USERS_FILE}" | while read SALUTATION FIRST_NAME LAST_NAME EMAIL TEMP_PASSWORD EXT_EMAIL OLD_SENT; do

# echo $FIRST_NAME $LAST_NAME $EMAIL $TEMP_PASSWORD $USER_OU
	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
		create \
		user "${EMAIL}" firstname "${FIRST_NAME}" lastname "${LAST_NAME}" \
		password "${TEMP_PASSWORD}" org "${USER_OU}"
	echo "created ${EMAIL}"

done

