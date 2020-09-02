#!/bin/bash -x
mkdir backUpFolder
oldFiles=`find -atime +1 -type f`
echo $oldFiles
cp $oldFiles backUpFolder
echo $oldFiles "Copied"

