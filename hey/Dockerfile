FROM alpine:latest

ENTRYPOINT ["/usr/bin/hey"]

RUN wget -O /usr/bin/hey https://hey-release.s3.us-east-2.amazonaws.com/hey_linux_amd64 \
	&& chmod +x /usr/bin/hey

USER 1000:1000
