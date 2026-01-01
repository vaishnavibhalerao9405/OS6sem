#!/bin/bash

echo "Listing .conf files starting with a, b, c, or d under /etc:"

find /etc -type f -name '[a-d]*.conf' 2>/dev/null

