#!/bin/bash
if [ -z $1 ]; then
    echo "Я не могу работать пустым"
elif [ $1 == "пицца" ]; then
    echo "С ананасом?"
    #echo "I don't need so many arguments"
else
    echo "Я хочу пиццу!"
fi