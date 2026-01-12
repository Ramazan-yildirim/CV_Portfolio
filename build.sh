#!/bin/bash
# ============================================
# CV PDF Builder Script (Linux/MacOS)
# ============================================
# Tek komutla PDF üretimi
# Kullanım: ./build.sh
# ============================================

set -e

echo ""
echo "========================================"
echo "   LaTeX CV Builder"
echo "========================================"
echo ""

echo "[1/3] Docker image kontrol ediliyor..."
docker-compose build --quiet

echo "[2/3] PDF derleniyor..."
docker-compose up --abort-on-container-exit

echo "[3/3] Temizlik yapılıyor..."
docker-compose down --volumes --remove-orphans 2>/dev/null || true

echo ""
echo "========================================"
echo "   PDF üretildi: output/main.pdf"
echo "========================================"
echo ""
