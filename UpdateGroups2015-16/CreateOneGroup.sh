#!/bin/bash

GROUP_EMAIL="${1}"
GROUP_NAME="${2}"
GROUP_DESCRIPTION="${3}"

#/usr/bin/python /Users/plsuh/Downloads/gam-3.21-python-src/gam.py \
#	create \
#	group "${GROUP_EMAIL}" name "${GROUP_NAME}" description "${GROUP_DESCRIPTION}"

#/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
#	update \
#	group "${GROUP_EMAIL}" add member file "${GROUP_EMAIL}"

/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
	update \
	group "${GROUP_EMAIL}" add manager file "admin_users.txt"

/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
	update \
	group "${GROUP_EMAIL}" who_can_post_message all_managers_can_post


