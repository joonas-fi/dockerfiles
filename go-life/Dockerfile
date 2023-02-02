FROM alpine:latest

ENTRYPOINT ["/usr/bin/go-life"]

ADD https://function61.com/app-dl/api/github.com/sachaos/go-life/latest_releases_asset/go-life_linux_amd64 /usr/bin/go-life

# gcompat because go-life links with GNU libc
RUN apk add --no-cache gcompat \
	&& chmod 755 /usr/bin/go-life

# run as non-root
USER 1000:1000

