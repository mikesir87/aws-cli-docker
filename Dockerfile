FROM python:alpine

ARG CLI_VERSION=1.16.54

RUN mkdir -p /aws && \
    apk -Uuv add groff jq less && \
    pip install awscli==$CLI_VERSION && \
    rm /var/cache/apk/*

WORKDIR /aws

CMD sh
