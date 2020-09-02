#!/bin/bash -x
wordCount=`cat access.log | grep -o systemd | wc -l`
echo 'The total number of words='$wordCount
