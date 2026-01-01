  #!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <base> <exponent>"
    exit 1
fi

base=$1
exponent=$2

result=1
for ((i=1; i<=exponent; i++)); do
    result=$((result * base))
done

echo "$base raised to the power of $exponent is: $result"

