#!/bin/bash

set -e
echo "Starting container..."
docker compose up -d
echo "Container started successfully!"
exit 0
