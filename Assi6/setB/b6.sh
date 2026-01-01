#!/bin/bash

# Check if exactly one argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

# Check if the argument is a valid directory
dir="$1"
if [ ! -d "$dir" ]; then
    echo "Error: $dir is not a directory"
    exit 1
fi

# Loop through each entry in the directory
for entry in "$dir"/*; do
    if [ -f "$entry" ]; then
        echo "$entry is a file"
    elif [ -d "$entry" ]; then
        count=$(ls -1 "$entry" | wc -l)
        echo "$entry is a directory and contains $count items"
    else
        echo "$entry is of unknown type"
    fi
done

