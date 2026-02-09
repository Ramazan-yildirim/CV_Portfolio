@echo off
echo ========================================
2: echo    Monorepo Build All (CV + Portfolio)
3: echo ========================================
4: 
5: echo [1/2] CV projeler derleniyor...
6: cd CV
7: docker-compose up --abort-on-container-exit
8: cd ..
9: 
10: echo [2/2] Portfolyo projesi derleniyor...
11: cd portfolio
12: docker-compose up portfolio-builder --abort-on-container-exit
13: cd ..
14: 
15: echo.
16: echo ========================================
17: echo [OK] Tum PDF ve Onizlemeler guncellendi.
18: echo ========================================
19: pause
20: 
