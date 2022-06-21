FROM alpine:latest

ENTRYPOINT ["/usr/bin/qemu-system-x86_64"]

# iproute2 for "$ ip" command which might be used for QEMU network up/down scripts
# same goes for Bash
RUN apk add --no-cache qemu-system-x86_64 iproute2 bash
