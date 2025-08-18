#!/bin/bash

# Beispiel: ./setup_nextcloud.sh cloud.meinlan.local

DOMAIN="$1"

if [ -z "$DOMAIN" ]; then
  echo "❌ Bitte Domain angeben, z.B.: ./setup_nextcloud.sh cloud.meinlan.local"
  exit 1
fi

TEMPLATE="/etc/nginx/sites-available/nextcloud.template"
TARGET="/etc/nginx/sites-available/nextcloud.conf"

# Platzhalter __DOMAIN__ ersetzen
sed "s/__DOMAIN__/$DOMAIN/g" "$TEMPLATE" > "$TARGET"

# Symlink nach sites-enabled legen (falls nicht vorhanden)
ln -sf "$TARGET" /etc/nginx/sites-enabled/nextcloud.conf

# Nginx reload
systemctl reload nginx

echo "✅ Nextcloud Nginx-Config eingerichtet für $DOMAIN"
