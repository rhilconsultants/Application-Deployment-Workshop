#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <NUMBER_OF_USERS>"
    exit 1
fi

COUNT=$1

if ! [[ "$COUNT" =~ ^[1-9][0-9]*$ ]]; then
    echo "Error: NUMBER_OF_USERS must be a positive integer"
    exit 1
fi

if ! command -v htpasswd >/dev/null 2>&1; then
    echo "Error: htpasswd not found (install httpd-tools or apache2-utils)"
    exit 1
fi

OUTPUT_FILE="htpasswd"
PASSWORD="pass"

for ((i=1; i<=COUNT; i++)); do
    username="user$i"

    if [ "$i" -eq 1 ]; then
        htpasswd -cb "$OUTPUT_FILE" "$username" "$PASSWORD"
    else
        htpasswd -b "$OUTPUT_FILE" "$username" "$PASSWORD"
    fi
done

echo "Created $OUTPUT_FILE with $COUNT user(s)"
