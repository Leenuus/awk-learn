#! /bin/bash

awk 'NR != 1 {print $NF, $1, $2}' ./payroll.tsv | sort -g | head -n 1
