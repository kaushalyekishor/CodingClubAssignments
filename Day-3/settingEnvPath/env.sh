#!/bin/bash -x
if [ $usersecret ]
then
	echo "path already exists"
else
	export usersecret=dH34zJaa23;
	echo $usersecret;
fi
