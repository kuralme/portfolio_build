FROM jekyll/jekyll:latest
WORKDIR /srv/jekyll

# Install dependencies for Jekyll
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Create dir for mounted content
RUN mkdir -p /home/kuralme.github.io
# COPY resume.pdf /home/kuralme.github.io/assets/resume.pdf
