#!/bin/bash

COUNTER=0

while [ $COUNTER -lt 20 ]; do
    echo "The current counter value is: $COUNTER"
    # Randomly choose between incrementing by 2 or 3
    RANDOM_INCREMENT=$(( RANDOM % 2 + 2 ))
    let COUNTER=$COUNTER+$RANDOM_INCREMENT
done
