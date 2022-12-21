FROM alpine:latest

ENTRYPOINT ["/pipes.sh/pipes.sh"]

# requires Bash
RUN apk add --no-cache git bash ncurses \
	&& git clone https://github.com/pipeseroni/pipes.sh.git
