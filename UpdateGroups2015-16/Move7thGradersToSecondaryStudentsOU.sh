#!/bin/bash

IFS="
"
/bin/cat "${1}" | while read STUDENT_NAME; do

		/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
	update \
	user "${STUDENT_NAME}" org "Secondary Students"
	
done
