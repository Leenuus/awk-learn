#! /bin/awk -f


{ for (i=3; i<= NF; i++) printf "%s\t%s%s", NR, i==3? "" : FS, $i; print NL }
