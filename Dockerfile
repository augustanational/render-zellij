FROM debian:latest
WORKDIR /render

RUN apt-get -qq update \
  && apt-get -qq install --upgrade -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    netcat-openbsd \
    vim \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    wget \
    curl \
    caddy \
    dnsutils \
  > /dev/null \
  && apt-get -qq clean \
  && rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* \
  && :

RUN echo "+search +short" > /root/.digrc
COPY tokens.db /render/
COPY Caddyfile /render/
COPY config.kdl /render/
COPY script/ /render/
COPY run.sh /render/

COPY install.sh /tmp
RUN /tmp/install.sh && rm -r /tmp/*

CMD ./run.sh
