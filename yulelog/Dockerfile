# copied from https://github.com/Duroktar/YuleLog/blob/master/dockerfile
# (it was hard to get it to install/compile on top of Alpine, lots of build dependencies)

FROM python:3.6-slim

ENTRYPOINT [ "YuleLog" ]

RUN apt update && apt install -y gcc zlib1g-dev libjpeg-dev \
	&& pip3 install YuleLog

# run as non-root
USER 1000:1000
