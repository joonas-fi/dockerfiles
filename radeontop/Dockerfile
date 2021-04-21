# Debian because this is not available from Alpine
FROM debian:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/sbin/radeontop"]

RUN apt update && apt install -y radeontop

