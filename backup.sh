#!/bin/bash

DATE=$(date +%F)
BACKUP_DIR=./backups

mkdir -p $BACKUP_DIR

echo "Starting WordPress backup..."

# Database backup
docker exec wordpress_db mysqldump -u root -proot_pass wordpress > $BACKUP_DIR/db_$DATE.sql

# wp-content backup (FROM CONTAINER)
docker cp wordpress_app:/var/www/html/wp-content $BACKUP_DIR/wp-content_$DATE

# compress it
tar -czf $BACKUP_DIR/wp-content_$DATE.tar.gz -C $BACKUP_DIR wp-content_$DATE

rm -rf $BACKUP_DIR/wp-content_$DATE

echo "Backup completed successfully!"
