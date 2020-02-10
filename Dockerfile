FROM python:alpine

ARG CLI_VERSION=2.0.0

RUN apk -uv add --no-cache groff jq less && \
    pip install --no-cache-dir awscli==$CLI_VERSION

WORKDIR /aws

CMD sh
