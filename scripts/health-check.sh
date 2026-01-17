#!/bin/bash

set -e 
# Make a GET request to the health endpoint
until curl -f  http://localhost:8080/health; do
echo "Waiting for server to start..."
    sleep 2
done

echo "Server is healthy!"
exit 0