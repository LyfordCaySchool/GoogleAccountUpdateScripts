#!/bin/sh

# $1 should be name of group including trailing @lcis.bs
# .csv will be appended to it

GAM_PATH="/Users/plsuh/Projects/Scripting/GAM-3.65/src/gam.py"
ADMINS_FILE="admin_users.csv"

# gam batch ops
/usr/bin/python "${GAM_PATH}" \
	update group "${1}" \
	sync member file "${1}.csv"

/usr/bin/python "${GAM_PATH}" \
	update group "${1}" \
	sync manager file "${ADMINS_FILE}"

