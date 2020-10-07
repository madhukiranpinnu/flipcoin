#!/bin/bash -x

echo "welcome to flipcoin problem"

coinvalue=$(( RANDOM%2 ));
if [ $coinvalue  -eq 1 ]
then
    echo "head"
else
    echo "tail"
fi

