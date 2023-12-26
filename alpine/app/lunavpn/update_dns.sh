#!/bin/sh

# Define Cloudflare DNS servers
IPv4_PRIMARY="1.1.1.1"
IPv4_SECONDARY="1.0.0.1"
IPv6_PRIMARY="2606:4700:4700::1111"
IPv6_SECONDARY="2606:4700:4700::1001"

# Backup the current resolv.conf
cp /etc/resolv.conf /etc/resolv.conf.backup

# Write new DNS settings to resolv.conf
{
    echo "# Cloudflare DNS settings"
    echo "nameserver $IPv4_PRIMARY"
    echo "nameserver $IPv4_SECONDARY"
    echo "nameserver $IPv6_PRIMARY"
    echo "nameserver $IPv6_SECONDARY"
} > /etc/resolv.conf