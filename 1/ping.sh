#!/bin/bash
read -p "Enter ip or dns: " ip;
if ping -q -W 1 -c 1 $ip > /dev/null 2>&1; then
    echo "Connectivity is OK" # stdout
else
    >&2 echo "Connectivity is not available" #stderr
fi
