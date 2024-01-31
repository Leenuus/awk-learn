#! /bin/awk -f

# NOTE: when you want to deal with data in one record

NR == 1 {
  for (i=1; i <= NF; i++){
    printf "%s - %s\n" , i, $i
  }
}
