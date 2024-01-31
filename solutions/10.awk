#! /bin/awk -f

BEGIN {res = 0; IGNORECASE=1;}
$(NF -1) ~ /Engineer/	 { res += 1; }
END {print res}
