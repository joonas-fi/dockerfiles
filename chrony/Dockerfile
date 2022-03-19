FROM alpine:latest

# example configs:
# "--env=CHRONY_CONF=refclock PHC /dev/ptp0 poll 3 dpoll -2"
# "--env=CHRONY_CONF=server 192.168.200.100 iburst minpoll 2 maxpoll 2 xleave\ndriftfile /var/lib/chrony/drift\nmakestep 0.1 3"
ENTRYPOINT ["/usr/bin/entrypoint.sh"]

ADD entrypoint.sh /usr/bin/entrypoint.sh

RUN apk add --no-cache chrony && chown 1000:1000 /etc/chrony/chrony.conf

# TODO: ability to run as non-root?
