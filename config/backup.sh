#!/bin/bash
# Backup script: archives /srv/share into /srv/backup

SOURCE="/srv/share"
DEST="/srv/backup"
DATE=$(date +%Y-%m-%d_%H-%M)

tar -czf "$DEST/share-backup-$DATE.tar.gz" "$SOURCE"

# Delete backups older than 7 days
find "$DEST" -name "share-backup-*.tar.gz" -mtime +7 -delete

echo "Backup finished: $DEST/share-backup-$DATE.tar.gz"
