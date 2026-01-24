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
docker-compose build

echo [2/3] PDF derleniyor...
docker-compose up --abort-on-container-exit

echo [3/3] Temizlik yapiliyor...
docker-compose down --volumes --remove-orphans 2>nul
del /q output\*.aux output\*.log output\*.out 2>nul

echo.
echo ========================================
echo [OK] PDF uretildi: output\Ramazan_Yildirim_CV_TR.pdf
echo [OK] PDF uretildi: output\Ramazan_Yildirim_CV_EN.pdf
echo ========================================
echo.

REM PDF'leri varsayılan okuyucuda aç
echo PDFler aciliyor...
start "" "output\Ramazan_Yildirim_CV_TR.pdf"
start "" "output\Ramazan_Yildirim_CV_EN.pdf"

pause
