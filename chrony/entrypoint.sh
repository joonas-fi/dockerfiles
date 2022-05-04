#!/bin/sh -eu

# supply chrony conf from environment variable
echo "$CHRONY_CONF" | sed 's/\\n/\n/g' > /etc/chrony/chrony.conf

# if crashes & Docker restarts the container, chronyd thinks another process is running (which is not true).
#
# due to nature of containers, there is very little chance that this entrypoint runs twice per container
# start-stop cycle (which would result in actual duplicate instances), so this should be pretty safe.
rm -f /var/run/chrony/chronyd.pid

# -d = run in foreground & log to terminal
exec /usr/sbin/chronyd -d
