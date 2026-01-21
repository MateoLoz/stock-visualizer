#!/bin/bash

set -e

echo "building container..."
docker compose up --build -d
echo "Container built successfully!"
exit 0