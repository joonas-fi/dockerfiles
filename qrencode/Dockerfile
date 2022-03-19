FROM alpine:latest

ENTRYPOINT ["/usr/bin/qrencode"]

RUN apk add --no-cache libqrencode

# run as non-root
USER 1000:1000
