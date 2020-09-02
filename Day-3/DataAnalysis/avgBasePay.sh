awk '{sum+=$4}END{print sum/NR}' data.csv
