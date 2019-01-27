FROM docker:stable-dind

RUN set -ex; \
    apk add --no-cache --update \
        abuild \
        bc \
        binutils \
        build-base \
        cmake \
        gcc \
        ncurses-dev \
        sed \
        wget

RUN set -ex; \
    apk add --no-cache --update \
        py-pip \
        bash \
        openssl \
        ca-certificates \
    && pip install --upgrade pip \
    && pip install docker-compose \
    && pip install awscli \
    && rm -rf ~/.cache/pip

