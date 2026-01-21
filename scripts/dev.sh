#!/bin/bash
set -e

echo "Starting dev environment..."
./scripts/build.sh &

DEV_PID=$!

echo "starting container..."
./scripts/start.sh

echo "Running health checks..."
./scripts/health-check.sh

echo "All services up 🚀"
echo "Dev process PID: $DEV_PID"

echo "shutting down dev environment..."

kill $DEV_PID
