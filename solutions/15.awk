#! /bin/awk -f

# NOTE: a fake hashmap, in fact, array in awk
NR != 1 {
  if (arr[$(NF - 2)] != 1){
    arr[$(NF - 2)] = 1;
  }
}

END {
  print length(arr)
  }
