FROM php:8.0-fpm

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        supervisor procps psmisc strace && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
