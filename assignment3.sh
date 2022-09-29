#!/bin/sh
FIRST="$1"
SECOND="$2"
if [ $FIRST -le 0 ] || [ $SECOND -le 0 ]
then
    echo "Invalid input"
    exit 1
fi

for (( i=1; i<="$FIRST"; i++ ))
do
    for (( j=1; j<="$SECOND"; j++ ))
    do
        echo -ne "$i*$j=$((i*j))\t"
    done
    echo
done