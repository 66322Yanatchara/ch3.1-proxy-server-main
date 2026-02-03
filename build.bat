@echo off
echo Building Frontend...
cd frontend
call npm install
call npm run build
if %errorlevel% neq 0 exit /b %errorlevel%
cd ..

echo Building Docker Images...
docker-compose build
if %errorlevel% neq 0 exit /b %errorlevel%
echo Build Complete!
