# ============================================
# LaTeX CV Builder - Docker Image
# ============================================
# TeX Live full kurulumu ile LaTeX derlemesi
# ============================================

FROM texlive/texlive:latest

# Çalışma dizini
WORKDIR /cv

# Gerekli paketler (fontawesome5 için)
RUN tlmgr update --self && \
    tlmgr install fontawesome5

# Varsayılan komut
CMD ["pdflatex", "-output-directory=/cv/output", "/cv/src/main.tex"]
