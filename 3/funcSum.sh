#!/bin/bash

function Sum()
{
    sum=$(($1 + $2))
    echo "Sum is: $sum" 
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2

Sum $num1 $num2