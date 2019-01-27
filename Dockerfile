FROM docker:stable-dind

RUN set -ex; \
    apk add --update py-pip bash openssl ca-certificates \
    && pip install --upgrade pip \
    && pip install docker-compose \
    && pip install awscli

# build-base

