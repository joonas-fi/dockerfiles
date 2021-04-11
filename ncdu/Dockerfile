FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/sbin/chroot", "/host", "ncdu"]

RUN apk add --no-cache ncdu
