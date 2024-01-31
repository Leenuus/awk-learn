#! /bin/awk -f

BEGIN { res = 0}
$1 == $2 { res += 1 }
END { printf "There is %s people with identical first name and last name.\n", res == 0 ? "no" : res}
