#!/bin/bash

ORIGINAL_FILE=
COPY_FILE="copy.txt"

while true; do
    # Check if the original file has been modified
    if git diff --quiet $ORIGINAL_FILE; then
        echo "No changes in $ORIGINAL_FILE"
    else
        echo "Changes detected in $ORIGINAL_FILE"
        # Update the copy file with the changes
        git checkout $ORIGINAL_FILE $COPY_FILE
        echo "Copy file updated with changes from original file."
    fi
    # Wait for 5 seconds before checking again
    sleep 5
done

