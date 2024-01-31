#! /bin/bash

# average
awk 'BEGIN {sum = 0}; NR != 1 {sum += $3} ; END {printf "Average wage is %s\n", sum / NR}' ./payroll.tsv

# median

line=$(wc -l ./payroll.tsv | awk '{ print $1 }')
line=$(($line - 1))
if [ $((line % 2)) -eq 0 ]; then
  mid0=$(($line / 2 ))
  mid1=$(($line / 2 + 1))
  res=$(awk 'NR != 1 {print $3} ' ./payroll.tsv | sort -g | awk "BEGIN { mids = 0; } NR == $mid0 || NR == $mid1 {mids += \$1} END {print mids / 2} ")

else
  mid=$(($line / 2 + 1))
  res=$(awk 'NR != 1 {print $3} ' ./payroll.tsv | sort -g | awk " NR == $mid {print}")
fi

echo "Median wage is $res"
