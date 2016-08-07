#!/bin/sh

GAM_PATH="/Users/plsuh/Projects/Scripting/GAM-3.65/src/gam.py"
ADMINS_FILE="admin_users.csv"

function one_group() {

#	echo $1
	
	/usr/bin/python "${GAM_PATH}" \
		update group "${1}" \
		sync member file "${1}.csv"

	/usr/bin/python "${GAM_PATH}" \
		update group "${1}" \
		sync manager file "${ADMINS_FILE}"

}


for GROUP_NAME in 2017 2018 2019 2020 2021 2022 2023 5th_students 4th_students 3rd_students; do
	one_group $GROUP_NAME
done
