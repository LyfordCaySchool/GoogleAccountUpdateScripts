#!/bin/sh

STUDENTS_FILE="${1}"
STUDENT_OU="${2}"

IFS=,
/bin/cat "${STUDENTS_FILE}" | while read LAST_NAME FIRST_NAME EMAIL; do

	/usr/bin/python /Users/plsuh/Downloads/gam-3.21-python-src/gam.py \
		create \
		user "${EMAIL}" firstname "${FIRST_NAME}" lastname "${LAST_NAME}" \
		password "lcispassword" org "${STUDENT_OU}"
	echo "created ${EMAIL}"

done

