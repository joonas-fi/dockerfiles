FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/croc"]

# /.config because Croc wants to write some config files and I'm too lazy to set up ENVs in such a way
# that it would point in actual home directory (which we'd have to create also)
RUN mkdir /tmp/install \
	&& cd /tmp/install \
	&& wget https://function61.com/app-dl/api/github.com/schollz/croc/latest_releases_asset/croc_%2A_Linux-64bit.tar.gz \
	&& tar -xzf *.tar.gz \
	&& mv croc /usr/bin/ \
	&& rm -rf /tmp/install \
	&& mkdir /.config && chmod 777 /.config

# run as non-root
USER 1000:1000
