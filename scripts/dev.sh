#!/bin/bash
set -e

echo "Starting dev environment..."
./scripts/dev.sh &

DEV_PID=$!

echo "Running health checks..."
./scripts/health-check.sh

echo "All services up 🚀"
echo "Dev process PID: $DEV_PID"

wait $DEV_PID
