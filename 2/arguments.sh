#!/bin/bash
if [ -z $1 ]; then
    echo "Я не могу работать пустым"
elif [ $# -gt 1 ]; then
    echo "Хэй, мне не нужно столько аргументов"
    #echo "I don't need so many arguments"
    exit 1
else
    echo "Понятно, я получил $1"
fi