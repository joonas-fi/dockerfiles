FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/croc"]

RUN mkdir /tmp/install \
	&& cd /tmp/install \
	&& wget https://github.com/schollz/croc/releases/download/v8.6.12/croc_8.6.12_Linux-64bit.tar.gz \
	&& tar -xzf *.tar.gz \
	&& mv croc /usr/bin/ \
	&& rm -rf /tmp/install
