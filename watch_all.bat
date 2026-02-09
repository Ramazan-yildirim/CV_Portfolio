@echo off
echo ========================================
2: echo    Monorepo Watch Mode (CV + Portfolio)
3: echo ========================================
4: echo Bu komut her iki proje icin ayri pencerelerde izleme modunu baslatir.
5: 
6: start "CV Watch" cmd /c "cd CV && docker-compose up cv-watch"
7: start "Portfolio Watch" cmd /c "cd portfolio && docker-compose up portfolio-watch"
8: 
9: echo [OK] Izleme modlari baslatildi.
10: 
