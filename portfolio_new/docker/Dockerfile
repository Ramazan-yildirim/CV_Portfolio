FROM texlive/texlive:latest

WORKDIR /workspace

# Install minimal tools if needed, but texlive:latest is usually comprehensive
# We just need to ensure we can build the project
ENTRYPOINT ["latexmk", "-pdf", "-outdir=../output", "main.tex"]
