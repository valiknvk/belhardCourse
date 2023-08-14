#!/bin/bash

start=1
number=$(($RANDOM% 10 + 1)) #or use $RANDOM to get random number between 0 and 32767


for ((i=1; i <= number; i++)); do
   #echo "$i.txt"
   filename="$i.txt"
   touch $filename
   find . -type d -exec touch {}/"${filename}"  \;
done
