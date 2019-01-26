FROM docker:dind

RUN set -ex; \
    apk add --update py-pip \
    && pip install --upgrade pip \
    && pip install docker-compose \
    && pip install awscli



