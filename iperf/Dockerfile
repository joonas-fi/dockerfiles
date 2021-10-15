FROM alpine:latest

ENTRYPOINT ["/usr/bin/iperf"]

RUN apk add --no-cache iperf

# run as non-root
USER 1000:1000
