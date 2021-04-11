FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/dig"]

RUN apk add --no-cache bind-tools

# run as non-root
USER 1000:1000
