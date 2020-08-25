FROM docker:stable-dind

RUN set -ex; \
    apk add --no-cache --update \
        abuild \
        bc \
        binutils \
        build-base \
        cmake \
        gcc \
        libc-dev \
        libffi-dev \
        make \
        ncurses-dev \
        sed \
        wget

RUN set -ex; \
    apk add --no-cache --update \
        py-pip \
        python3-dev \
        bash \
        openssl-dev \
        ca-certificates \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir docker-compose \
    && pip install --no-cache-dir awscli
