@echo off
echo WARNING: You are about to deploy to PRODUCTION environment.
echo This will use docker-compose.prod.yml
pause

echo Stopping containers...
docker-compose down

echo Starting Production Containers...
docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d --build

echo Checking status...
timeout /t 5
docker-compose ps
