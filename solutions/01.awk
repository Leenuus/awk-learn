#! /usr/bin/awk -f

BEGIN { IGNORECASE=1 } 
/janitor/ { print $3 }
