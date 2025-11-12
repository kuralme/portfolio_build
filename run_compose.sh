#!/bin/bash
# A helper script to run Docker Compose and ensure cleanup on exit.

set -e  # Exit immediately on error

# Register cleanup to run on script exit
cleanup() {
    echo -e "\n🧹 Stopping and cleaning up Docker Compose..."
    docker compose down
}
trap cleanup EXIT

echo "Starting Docker Compose..."
docker compose up
