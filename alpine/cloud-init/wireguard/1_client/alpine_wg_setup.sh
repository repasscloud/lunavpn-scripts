#!/bin/sh

# Update package index and install required packages
apk update
apk upgrade --no-cache
apk add docker docker-compose git icu-data-full icu-libs tzdata apache2-utils ufw

# Enable and start Docker service
rc-update add docker boot
service docker start

# Allow Docker port and Docker bridge interface
ufw allow 2375/tcp
ufw allow in on docker0

# Configure SSH keys and allow SSH port
mkdir -p /root/.ssh
chmod 700 /root/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFjWFuC84iy2nhO6vqKh9VnrqfipV+l3yheC8vM/k90k hello@lunavpn.co" > /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
ufw allow 22/tcp

# Set up Caddy web server
mkdir -p /app/caddy/caddy_config
mkdir -p /app/caddy/caddy_data
wget -O /app/caddy/Caddyfile https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/caddy/etc/caddy/Caddyfile
ufw allow 80/tcp
ufw allow 443/tcp

# Set up Nginx
mkdir -p /app/nginx/html
wget -O /app/nginx/html/index.html https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/nginx/usr/share/nginx/html/index.html
wget -O /app/nginx/html/style.css https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/nginx/usr/share/nginx/html/style.css

# LunaVPN specifics
mkdir -p /app/lunavpn
uuidgen | tr -d '\n' > /app/lunavpn/server.uuid
wget -O /app/lunavpn/get_latest.sh https://raw.githubusercontent.com/repasscloud/lunavpn-lvfucs/main/get_latest.sh
chmod +x /app/lunavpn/get_latest.sh
/app/lunavpn/get_latest.sh
wget -O /app/lunavpn/alpine_update.sh https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/lunavpn/alpine_update.sh
chmod +x /app/lunavpn/alpine_update.sh
(crontab -l ; echo "0 0 * * 1 /app/lunavpn/alpine_update.sh") | crontab -

# Set server.type (wireguard)
echo "wireguard" | tr -d '\n' > /app/lunavpn/server.type
wget -O /etc/init.d/lunavpn-lvfucs https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/lunavpn/lunavpn-lvfucs
chmod +x /etc/init.d/lunavpn-lvfucs
rc-update add lunavpn-lvfucs default

# Wireguard setup
mkdir -p /app/wg
mkdir -p /app/wg/config
wget -O /app/docker-compose.yml https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/wireguard/docker-compose-1-client.yml
wget -O /etc/init.d/docker-compose-wg https://raw.githubusercontent.com/repasscloud/lunavpn-scripts/main/alpine/wireguard/docker-compose-wg
chmod +x /etc/init.d/docker-compose-wg
rc-update add docker-compose-wg default
ufw allow 51820/udp

# Enable and start UFW, then reboot
ufw --force enable
reboot
