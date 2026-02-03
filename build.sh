#!/bin/bash
set -e

echo "Building Frontend..."
cd frontend
npm install
npm run build
cd ..

echo "Building Docker Images..."
docker-compose build
echo "Build Complete!"
