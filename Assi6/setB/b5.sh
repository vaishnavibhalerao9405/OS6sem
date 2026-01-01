#!/bin/bash

args=("$@")
count=${#args[@]}

for (( i=count-1; i>=0; i-- )); do
    echo "${args[i]}"
done

