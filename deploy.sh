#!/bin/bash
set -e

echo "Stopping containers..."
docker-compose down

echo "Building application..."
./build.sh

echo "Starting containers..."
docker-compose up -d

echo "Checking status..."
sleep 5
./status.bat
