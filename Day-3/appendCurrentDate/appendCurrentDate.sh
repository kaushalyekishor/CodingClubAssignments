#!/bin/bash -x

for file in `ls *.log.1`
do
	fileName=`echo $file | awk -F. '{print $1}'`
	mkdir $fileName
	date=`date +%d%m%y`
	cp $file $fileName"-"$date".log"
done
