#!/bin/bash

while read line; do
    if [ -z $line ]; then
        break
    else
        echo "first method - 'echo -n "$line" | wc -c'"
        echo -n "$line" | wc -c
        echo "second method - 'echo $ {#line}'"
        echo ${#line}   
    fi
done