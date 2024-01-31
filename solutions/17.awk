#! /bin/bash

[ -n "$(awk '{ print $1, $2 }'  ./payroll.tsv | uniq -d)" ] && echo "Duplicated entries exist" || echo "No duplication"
