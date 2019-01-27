FROM docker:stable-dind

RUN set -ex; \
    apk add --update --no-cache py-pip bash openssl ca-certificates build-base \
    && pip install --upgrade pip \
    && pip install docker-compose \
    && pip install awscli \
    && rm -rf ~/.cache/pip

