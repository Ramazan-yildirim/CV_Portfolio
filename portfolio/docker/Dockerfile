FROM texlive/texlive:latest

WORKDIR /workspace

# Install poppler-utils for pdftoppm (preview generation)
RUN apt-get update && apt-get install -y poppler-utils && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["latexmk", "-pdf", "-outdir=../output", "main.tex"]
