@echo off
REM ============================================
REM CV PDF Builder Script (Windows)
REM ============================================
REM Tek komutla PDF üretimi
REM Kullanım: build.bat
REM ============================================

echo.
echo ========================================
echo    LaTeX CV Builder
echo ========================================
echo.

echo [1/3] Docker image kontrol ediliyor...
docker-compose build --quiet

echo [2/3] PDF derleniyor...
docker-compose up --abort-on-container-exit

echo [3/3] Temizlik yapiliyor...
docker-compose down --volumes --remove-orphans 2>nul

echo.
echo ========================================
echo    PDF uretildi: output/main.pdf
echo ========================================
echo.

pause
