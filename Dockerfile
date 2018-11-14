FROM python:alpine

ARG CLI_VERSION=1.16.54

RUN mkdir -p /aws && \
    apk -uv add --no-cache groff jq less && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD sh
