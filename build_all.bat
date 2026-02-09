@echo off
echo ========================================
echo    Monorepo Build All (CV + Portfolio)
echo ========================================

echo [1/2] CV projeler derleniyor...
cd CV
docker-compose up --abort-on-container-exit
cd ..

echo [2/2] Portfolyo projesi derleniyor...
cd portfolio
docker-compose up portfolio-builder --abort-on-container-exit
cd ..

echo.
echo ========================================
echo [OK] Tum PDF ve Onizlemeler guncellendi.
echo ========================================
pause
