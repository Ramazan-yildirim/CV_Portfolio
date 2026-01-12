# 📄 LaTeX CV - Docker Builder


Modüler LaTeX CV projesi. Docker ile tek komutla PDF üretimi.

## 👁️ Önizleme / Preview

| Türkçe CV | English CV |
|:---:|:---:|
| <img src="assets/cv-tr-preview.png" width="400" alt="Türkçe CV Önizleme"> | <img src="assets/cv-en-preview.png" width="400" alt="English CV Preview"> |
| [📂 PDF İndir (TR)](output/cv_tr.pdf) | [📂 Download PDF (EN)](output/cv_en.pdf) |

## 🚀 Hızlı Başlangıç

```bash
# Tek seferlik derleme + PDF açma
.\build.bat

# Watch mode - her 5 saniyede otomatik derleme
docker-compose --profile watch up
```

**Çıktı:** `output/main.pdf` (her seferinde aynı dosya güncellenir)

## 📁 Proje Yapısı

```
├── src/
│   ├── main.tex              # Ana dosya
│   └── sections/
│       ├── header.tex        # İsim ve iletişim
│       ├── experience.tex    # İş deneyimi
│       ├── education.tex     # Eğitim
│       └── skills.tex        # Yetenekler
├── output/                   # PDF çıktıları
├── Dockerfile
├── docker-compose.yml
└── build.bat / build.sh
```

## ✏️ CV'yi Düzenleme

`src/sections/` klasöründeki `.tex` dosyalarını düzenle:

| Dosya | İçerik |
|-------|--------|
| `header.tex` | İsim, email, telefon, LinkedIn |
| `experience.tex` | İş deneyimleri |
| `education.tex` | Eğitim bilgileri |
| `skills.tex` | Teknik yetenekler |

## ➕ Yeni Bölüm Ekleme

1. `src/sections/` içinde yeni `.tex` dosyası oluştur
2. `src/main.tex` dosyasına `\input{sections/yenidosya}` ekle

## 🔧 Gereksinimler

- Docker Desktop
- Git (opsiyonel)

## 📝 Lisans

MIT License
