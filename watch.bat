@echo off
REM ============================================
REM CV Watch Mode - Dosya değişikliğinde otomatik derleme
REM ============================================
REM PDF her değişiklikte güncellenir (aynı dosya)
REM Ctrl+C ile durdur
REM ============================================

echo.
echo ========================================
echo    LaTeX CV - Watch Mode
echo ========================================
echo    Dosya degisikliklerini izliyor...
echo    Ctrl+C ile durdur
echo ========================================
echo.

:loop
echo [%time%] Derleniyor...
docker-compose up --abort-on-container-exit 2>nul

REM PDF açık mı kontrol et ve güncelle
echo [%time%] PDF guncellendi: output/main.pdf

REM 3 saniye bekle ve tekrar kontrol et
timeout /t 3 /nobreak >nul
goto loop
