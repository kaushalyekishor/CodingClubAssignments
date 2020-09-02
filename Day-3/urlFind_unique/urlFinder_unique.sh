#!/bin/bash -x
`cat access.log | awk '{print $15}' | sort | uniq -c | sort | head -3`
