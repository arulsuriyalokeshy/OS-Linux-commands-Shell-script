#!/bin/bash
# Breaking out of a for loop

for var1 in 1 2 3 4 5; do
    if [ "$var1" -eq 3 ]; then
        break  # Exit the loop when var1 equals 3
    fi
    echo "Iteration number: $var1"
done

echo "The for loop is completed"
