FROM squidfunk/mkdocs-material:latest

# Install Node.js LTS on Alpine
RUN apk update && \
    apk add --no-cache nodejs npm tar

# Verify Node.js installation
RUN node --version && npm --version

RUN mkdir /data && \
        cd /data && \
        git clone https://github.com/severalnines/ccx-docs

COPY convert_sidebars.py /data/ccx-docs
COPY convert_sidebars.js /data/ccx-docs
COPY convert_admonitons.py /data/ccx-docs
COPY finalize_mkdocs.sh /data/ccx-docs

RUN cd /data/ccx-docs && npm install --legacy-peer-deps
RUN cd /data/ccx-docs && node convert_sidebars.js
RUN cd /data/ccx-docs && \
        python convert_admonitons.py && \
        python convert_sidebars.py > mkdocs.yml && \
        sh finalize_mkdocs.sh
RUN cd /data/ccx-docs && mkdocs build && cat mkdocs.yml
RUN cd /data/ccx-docs && tar -czf ccxdocs-site.tar.gz site
