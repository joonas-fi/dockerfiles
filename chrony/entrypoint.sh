#!/bin/sh -eu

# supply chrony conf from environment variable
echo "$CHRONY_CONF" | sed 's/\\n/\n/g' > /etc/chrony/chrony.conf

# -d = run in foreground & log to terminal
exec /usr/sbin/chronyd -d
