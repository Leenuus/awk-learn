#! /bin/awk -f

$5 ~ /^Springfield$/ {print $1, $2}
