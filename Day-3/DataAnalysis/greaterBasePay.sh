#!/bin/bash -x
for file in `ls *.csv`
do

awk '{if( $4>10000)print $2" "$7}' data.csv

