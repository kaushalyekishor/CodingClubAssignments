#!/bin/bash -x
diff --brief <(sort 1.txt) <(sort 2.txt) >/dev/null
difference=$?

if [ $difference -eq 1 ]
then
    echo "they are different"
else
    echo "they are identical"
fi
