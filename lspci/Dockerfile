FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/sbin/lspci"]

RUN apk add --no-cache pciutils
