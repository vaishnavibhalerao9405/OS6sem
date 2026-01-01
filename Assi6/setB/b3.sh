#!/bin/bash

days=("Mon" "Tue" "Wed" "Thu" "Fri" "Sat" "Sun")

for day in "${days[@]}"; do
    case $day in
        (Sat|Sun)
            echo "$day (WEEKEND)"
            ;;
         *)
            echo "$day (WEEKDAYS)"
            ;;
    esac
done

