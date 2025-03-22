#!/bin/bash

var1=100

until [ "$var1" -le 0 ]; do
    echo "$var1"
    var1=$((var1 - 25))  # Using $((...)) for arithmetic operations
done

