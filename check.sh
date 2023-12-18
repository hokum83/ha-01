#!/bin/bash

if nc -z localhost 80; then
    PORT_AVAILABLE=true
else
    PORT_AVAILABLE=false
fi

PAGE="/var/www/html/index.html"

if [[ "$PORT_AVAILABLE" = true ]] && [[ -f "$PAGE" ]]; then
    exit 0
else
    exit 1
fi
