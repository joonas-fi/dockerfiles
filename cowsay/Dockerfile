# cowsay is only available in edge/testing repository
FROM alpine:edge

ENTRYPOINT ["/usr/bin/cowsay"]

RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
	&& apk add --no-cache cowsay

# run as non-root
USER 1000:1000
