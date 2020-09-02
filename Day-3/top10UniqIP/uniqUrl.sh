#!/bin/bash -x
cat access.log | awk '{print $20 $21 $22}' | sort | uniq -c | sort -r | head -10

