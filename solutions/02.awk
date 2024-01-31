#!/bin/awk -f

$6 ~ /^CEO$/ { printf "%s, %s\n", $2, $1}
