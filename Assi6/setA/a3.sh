#!/bin/bash

if [ $# -ne 1 ]
then 
    echo "usage: $0 number"
    exit 1
fi

n=$1
i=1

while [ $i -lt 10 ]
do
  echo "$n * $i = 'expr $n \* $i'"
  i='expr $i + 1'
done
