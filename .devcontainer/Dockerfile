FROM mcr.microsoft.com/devcontainers/go:1.25
RUN apt-get update \
    && apt-get install -y xz-utils \
    && curl -L -o /usr/local/bin/opa "https://openpolicyagent.org/downloads/v1.12.3/opa_linux_amd64" \
    && chmod +x /usr/local/bin/opa \
    && curl -L -o /usr/local/bin/regal "https://github.com/open-policy-agent/regal/releases/download/v0.38.1/regal_Linux_x86_64" \
    && chmod +x /usr/local/bin/regal
