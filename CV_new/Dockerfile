# ============================================
# LaTeX CV Builder - Docker Image
# ============================================
# TeX Live full kurulumu ile LaTeX derlemesi
# ============================================

FROM texlive/texlive:latest

# Çalışma dizini
WORKDIR /cv

# Gerekli paketler (fontawesome5 için ve poppler-utils)
RUN tlmgr update --self && \
    tlmgr install fontawesome5 && \
    apt-get update && \
    apt-get install -y poppler-utils

# Varsayılan komut
CMD ["sh", "-c", "pdflatex -output-directory=/cv/output /cv/src/cv_tr.tex && pdflatex -output-directory=/cv/output /cv/src/cv_en.tex"]
