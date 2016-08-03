#!/bin/sh


updateOneGroup() {

#	GROUP_EMAIL="${1}"
#	GROUP_NAME="${2}"
#	GROUP_DESCRIPTION="${3}"

	/usr/bin/python /Users/plsuh/Downloads/gam-3.21-python-src/gam.py \
		create \
		group "${GROUP_EMAIL}" name "${GROUP_NAME}" description "${GROUP_DESCRIPTION}"

	/usr/bin/python /Users/plsuh/Downloads/gam-3.21-python-src/gam.py \
		update \
		group "${GROUP_EMAIL}" add member file "${GROUP_EMAIL}.csv"

}

IFS=,
/bin/cat "${1}" | while read GROUP_EMAIL TO_BE_ADDED ADD_TYPE; do

#	echo $GROUP_EMAIL $TO_BE_ADDED $ADD_TYPE

	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
	update \
	group "${GROUP_EMAIL}" add "${ADD_TYPE}" "${TO_BE_ADDED}"

done


