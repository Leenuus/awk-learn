#! /bin/awk -f

BEGIN {res = 1}
$2 ~ /^Portwood$/ { res += 1 }
END {print res}
