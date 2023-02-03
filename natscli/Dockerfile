FROM alpine:latest

ENTRYPOINT ["/usr/bin/nats"]

# without this `$ nats subscribe ...` fails with:
#   "nats: error: user: Current requires cgo or $USER set in environment"
ENV USER=dummy

RUN mkdir /tmp/nats && cd /tmp/nats && wget https://function61.com/app-dl/api/github.com/nats-io/natscli/latest_releases_asset/nats-%2A-linux-amd64.zip \
	&& unzip nats* \
	&& mv nats-*-linux-amd64/nats /usr/bin/nats \
	&& rm -rf /tmp/nats

# run as non-root
USER 1000:1000
