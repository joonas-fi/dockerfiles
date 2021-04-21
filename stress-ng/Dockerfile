FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/stress-ng"]

# chown b/c /workspace needs to be writable for I/O tests
RUN apk add --no-cache stress-ng \
	&& chown 1000:1000 /workspace

# run as non-root
USER 1000:1000
