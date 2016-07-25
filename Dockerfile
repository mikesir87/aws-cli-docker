FROM alpine:latest

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff jq less python py-pip && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

COPY cli-version /

WORKDIR /aws

