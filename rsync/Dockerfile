FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/rsync"]

RUN apk add --no-cache rsync

# run as non-root
USER 1000:1000
