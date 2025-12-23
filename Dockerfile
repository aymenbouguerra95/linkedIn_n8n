# استخدم Debian base
FROM n8nio/n8n:latest

USER root

# تثبيت Python 3 و venv و pip
RUN apt-get update && \
    apt-get install -y python3 python3-venv python3-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
