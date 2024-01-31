#! /bin/awk -f

# NOTE: NL: new line
# FS: field separator
# remove first FS with index
{ for (i=3; i<= NF; i++) printf "%s%s", i==3? "" : FS, $i; print NL }
