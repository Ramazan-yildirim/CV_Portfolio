FROM texlive/texlive:latest

WORKDIR /workspace

# Install poppler-utils for pdftoppm (preview generation)
RUN apt-get update && apt-get install -y poppler-utils && rm -rf /var/lib/apt/lists/*

# No ENTRYPOINT to allow flexible commands in docker-compose
