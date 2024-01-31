#! /bin/awk -f

BEGIN { res = 0; }; $(NF-1) ~ /^MechanicalEngineer$/ { res += 1; }; END { print res }
