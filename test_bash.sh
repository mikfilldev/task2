#!/bin/bash

source script_to_test.sh

TMP_FILE=$(mktemp)

bash script_to_test.sh > "$TMP_FILE"

EXPECTED_COUNTER=0
while read -r line; do
    # Check if each line contains the expected counter value
    if [[ "$line" =~ "The current counter value is: ([0-9]+)" ]]; then
        CURRENT_COUNTER="${BASH_REMATCH[1]}"
        if [ "$CURRENT_COUNTER" -ne "$EXPECTED_COUNTER" ]; then
            echo "Test failed: Expected counter value $EXPECTED_COUNTER but got $CURRENT_COUNTER"
            exit 1
        fi
        RANDOM_INCREMENT=$(( RANDOM % 2 + 2 ))
        let EXPECTED_COUNTER=EXPECTED_COUNTER+RANDOM_INCREMENT
    fi
done < "$TMP_FILE"

echo "Test passed"