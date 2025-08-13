#!/bin/bash

testfile="test.txt"

if grep -iEq "downloaded newer image|pull complete|pulled" "$testfile"; then
    echo "Images were updated. Doing update..."
else
    echo "No updates. Nothing to do."
fi
