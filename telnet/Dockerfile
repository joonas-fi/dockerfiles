FROM alpine:latest

ENTRYPOINT ["/usr/bin/telnet"]

RUN apk add --no-cache inetutils-telnet

# run as non-root
USER 1000:1000
