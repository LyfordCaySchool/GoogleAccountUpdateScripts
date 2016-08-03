#!/bin/bash


ROLLUP_GROUPS_LIST="1st_parents@lcis.bs 2nd_parents@lcis.bs \
3rd_parents@lcis.bs 4th_parents@lcis.bs 5th_parents@lcis.bs 6th_parents@lcis.bs"

for ONE_GROUP in ${ROLLUP_GROUPS_LIST}; do

	echo $ONE_GROUP
	
	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
	update \
	group "${ONE_GROUP}" sync member file emptyfile.txt
	
	/usr/bin/python /Users/plsuh/Projects/Scripting/GAM-3.5/gam.py \
	update \
	group "${ONE_GROUP}" sync manager file admin_users.txt
	
done



exit 0


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

