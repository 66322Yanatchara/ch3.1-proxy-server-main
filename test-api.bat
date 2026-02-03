@echo off
echo Testing API Endpoints...
echo.

echo 1. Checking API Root (via Nginx)...
curl -i http://localhost/api/

echo.
echo.
echo 2. Getting All Tasks...
curl -i http://localhost/api/tasks

echo.
echo.
echo 3. Creating a New Task...
curl -X POST http://localhost/api/tasks ^
   -H "Content-Type: application/json" ^
   -d "{\"title\": \"Test Task\", \"description\": \"Created via test script\"}"

echo.
echo.
echo 4. Getting Tasks Again...
curl -i http://localhost/api/tasks

echo.
echo Test Complete.
