FROM jekyll/jekyll:latest
WORKDIR /srv/jekyll

# Install dependencies for Jekyll
RUN apk add --no-cache \
    build-base \
    git

# Create dir for mounted content
RUN mkdir -p /home/kuralme.github.io
# COPY resume.pdf /home/kuralme.github.io/assets/resume.pdf

# Set permissions for Jekyll
RUN chown -R jekyll:jekyll /srv/jekyll /home/kuralme.github.io
