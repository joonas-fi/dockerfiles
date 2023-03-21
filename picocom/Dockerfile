FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/picocom"]

RUN apk add --no-cache picocom

# run as non-root
USER 1000:1000
