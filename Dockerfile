FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install --no-install-recommends --assume-yes \
       clang-format \
       git \
       colordiff \
       ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
