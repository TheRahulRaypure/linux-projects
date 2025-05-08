#!/bin/bash

# Check if the user has given the folder to backup in input
if [ -z "$1" ]; then 
	echo "Usage: #0 /path/to/folder"
	exit 1
fi

# create and set the variables for source folder, backup folder
# the first argument is the directory we want to backup
SOURCE_FOLDER=$1

# backup folder
BACKUP_FOLDER="$HOME/backups"

# timestamp
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# name for backup folder 
ARCHIVE_NAME=$(basename "$SOURCE_FOLDER")_backup_$TIMESTAMP.tar.gz

# ncreate a log file.
LOG_FILE="$BACKUP_FOLDER/backup.log"

# create a backup folderif already not created
mkdir -p "$BACKUP_FOLDER"

# create a backup/archieve/compress file
tar -czf "$BACKUP_FOLDER/$ARCHIVE_NAME" "$SOURCE_FOLDER"

echo "$(date): Backup of '$SOURCE_FOLDER' saved as '$ARCHIVE_NAME'" >> "$LOG_FILE"

echo "Backup Completed! File saved as: $BACKUP_FOLDER/$ARCHIVE_NAME"
