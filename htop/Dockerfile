FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/htop"]

RUN apk add --no-cache htop

# run as non-root
USER 1000:1000
