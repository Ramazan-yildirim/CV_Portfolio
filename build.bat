@echo off
REM ============================================
REM CV PDF Builder + Önizleme (Windows)
REM ============================================
REM PDF derler ve varsayılan PDF okuyucuda açar
REM ============================================

echo.
echo ========================================
echo    LaTeX CV Builder + Preview
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

REM PDF'i varsayılan okuyucuda aç
echo PDF aciliyor...
start "" "output\main.pdf"

pause
