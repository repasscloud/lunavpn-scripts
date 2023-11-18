#!/bin/sh

# Create an initial password file if not exists
if [ ! -e /etc/squid/passwd ]; then
  touch /etc/squid/passwd
fi

# Start Squid
exec squid -N -d 1

