FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/sbin/lspci"]

RUN apk add --no-cache pciutils

# run as non-root
USER 1000:1000
