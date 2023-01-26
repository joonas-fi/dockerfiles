FROM alpine:latest

ENTRYPOINT ["/usr/bin/uuidgen"]

RUN apk add --no-cache uuidgen

# run as non-root
USER 1000:1000
