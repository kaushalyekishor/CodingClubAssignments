#!/bin/bash -x
cat access.log | awk '{print $9}'| uniq -c | sort
