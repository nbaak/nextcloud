#!/bin/bash

tmpfile=$(mktemp)

docker compose pull 2>&1 | tee "$tmpfile"

if grep -q "Downloaded newer image|Pull complete" "$tmpfile"; then
    echo "Images were updated. Doing update..."
    # do_update
    docker compose down
    docker compose up -d
else
    echo "No updates. Nothing to do."
fi

rm "$tmpfile"
