#!/bin/bash

sum=0
count=0
num=1

echo "First 10 odd numbers are:"

while [ $count -lt 10 ]
do
    echo $num
    sum=$((sum + num))
    num=$((num + 2))
    count=$((count + 1))
done

echo "Sum of first 10 odd numbers is: $sum"

