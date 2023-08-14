#!/bin/bash
read -p "Enter ip or dns: " ip;
if ping -q -W 1 -c 1 $ip > /dev/null 2>&1; then
    echo "Connectivity OK" # stdout
else
    >&2 echo "Connectivity not available" #stderr
fi