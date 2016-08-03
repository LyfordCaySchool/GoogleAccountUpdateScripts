#!/bin/sh


updateOneGroup() {

	GROUP_BASE="${1}"

	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
		update \
		group "${GROUP_BASE}@lcis.bs" sync member file "${GROUP_BASE}.csv"

	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
		update \
		group "${GROUP_BASE}@lcis.bs" sync manager file "admin_users.txt"

}


GROUPS_LIST=`/bin/ls *.csv | /usr/bin/perl -lane '/(.*)\.csv/;print $1'`

for ONE_GROUP in $GROUPS_LIST; do

#	echo $ONE_GROUP
	updateOneGroup "${ONE_GROUP}"

done



