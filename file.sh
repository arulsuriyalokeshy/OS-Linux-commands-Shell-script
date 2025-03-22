#!/bin/bash

# Reading values from a file
file="cities"

while IFS= read -r state; do
    echo "Visit beautiful $state"
done < "$file"
