#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="/backups"
NGINX_CONF="/etc/nginx"
NGINX_HTML="/usr/share/nginx/html"

mkdir -p $BACKUP_DIR

if [ -d "$NGINX_CONF" ] && [ -d "$NGINX_HTML" ]; then
  tar -czf $BACKUP_DIR/nginx_backup_$DATE.tar.gz $NGINX_CONF $NGINX_HTML
  tar -tzf $BACKUP_DIR/nginx_backup_$DATE.tar.gz > $BACKUP_DIR/nginx_verify_$DATE.log
else
  echo "Nginx directories not found. Backup skipped." >> $BACKUP_DIR/nginx_error_$DATE.log
fi
