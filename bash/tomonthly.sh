#!/bin/sh
# Author : Harry
# Documentation Logs
# 2016-11-07 - Move daily to monthly
##

MONTH_NOW=$(date +"%Y%m")
MONTH_MIN1=$(date +"%Y%m" -d '-1 month')
MONTH_MIN2=$(date +"%Y%m" -d '-2 month')
MONTH_MIN3=$(date +"%Y%m" -d '-3 month')

DIRm=/mnt/monthly/dbs/ #/mnt/monthly/dbs
DIRd=/mnt/daily/dbs/ #/mnt/daily/dbs

backup ()
{
	cd $DIRd$1
	rsync -avhPpWR --stats * $DIRm$1/
	rm $DIRd$1/$MONTH_MIN1/*0[1-9]
	rm $DIRd$1/$MONTH_MIN1/*1[0-4]
	rm $DIRd$1/$MONTH_MIN2/*0[1-9]
	rm $DIRd$1/$MONTH_MIN2/*1[0-4]
	rm -rf $DIRd$1/$MONTH_MIN3
}

backup 51.55
backup 51.59
backup 51.198
