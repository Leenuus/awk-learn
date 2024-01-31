#! /bin/awk -f

BEGIN { name = "" ; highestWage = 0; }
NR != 1 {
  if ($3 > highestWage){
    highestWage = $3;
    name = sprintf("%s %s", $1, $2);
  }
}
END {print name}

# BEGIN {
#     highest = 0
#     name = ""
# }

# $0 !~ /HourlyWage/ {
#     if ($3 > highest) {
#         highest = $3
#         name = sprintf("%s %s", $1, $2)
#     }
# }

# END {
#     printf "Highest paid person is %s who makes $%.2f/hour\n", name, highest
# }
