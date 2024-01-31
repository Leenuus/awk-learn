#! /bin/awk -f

BEGIN { name = "" ; highestHours = 0; }
NR != 1 {
  if ($4 > highestHours){
    highestHours = $4;
    name = sprintf("%s %s", $1, $2);
  }
}
END {print name}

# BEGIN {
#     highest = 0
#     name = ""
# }

# $0 !~ /HourlyWage/ {
#     if ($4 > highest) {
#         highest = $4
#         name = sprintf("%s %s", $1, $2)
#     }
# }

# END {
#     printf "%s worked the most hours at %d\n", name, highest
# }

