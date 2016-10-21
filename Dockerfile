FROM alpine:latest

COPY cli-version /

RUN \
	mkdir -p /aws && \
	apk -Uuv add groff jq less python py-pip && \
	pip install awscli==$(cat /cli-version) && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/*

WORKDIR /aws

