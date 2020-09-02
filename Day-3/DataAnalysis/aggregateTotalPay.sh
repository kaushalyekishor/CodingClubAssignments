
cat data.csv | grep CAPTAIN | awk '{sum+=$7}END{print sum}'
