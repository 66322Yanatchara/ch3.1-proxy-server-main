@echo off
echo ========================================
echo Container Status:
echo ========================================
docker-compose ps --format "table {{.Name}}\t{{.Status}}\t{{.Ports}}"

echo.
echo ========================================
echo Nginx Configuration Test:
echo ========================================
docker-compose exec -T nginx nginx -t

echo.
echo ========================================
echo Backend Health:
echo ========================================
docker-compose exec -T backend wget -qO- http://localhost:3000

echo.
echo ========================================
echo Recent Logs:
echo ========================================
docker-compose logs --tail=10
