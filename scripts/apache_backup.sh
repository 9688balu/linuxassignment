#!/bin/bash
DATE=$(date +%F)
BACKUP_DIR="/backups"
mkdir -p $BACKUP_DIR
tar -czf $BACKUP_DIR/apache_backup_$DATE.tar.gz /etc/httpd/ /var/www/html/
tar -tzf $BACKUP_DIR/apache_backup_$DATE.tar.gz > $BACKUP_DIR/apache_verify_$DATE.log
