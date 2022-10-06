FROM alpine:latest

ENTRYPOINT ["/usr/bin/qemu-system-x86_64"]

# - iproute2 for "$ ip" command which might be used for QEMU network up/down scripts
# - same goes for Bash
# - USB host and USB redirect to enable USB passthrough. not sure if latter needed.
RUN apk add --no-cache qemu-system-x86_64 qemu-hw-usb-host qemu-hw-usb-redirect iproute2 bash
