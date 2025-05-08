#!/bin/bash

# 📂 Source directory to backup
SOURCE_DIR="/home/rahul/Documents/important-data"

# 📦 Destination backup directory
BACKUP_DIR="/home/rahul/backups"
mkdir -p "$BACKUP_DIR"

# 🕓 Timestamp for uniqueness
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# 🗂️ Output file name
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# 📌 Create the compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# ✅ Success message
echo "✅ Backup of $SOURCE_DIR completed at $TIMESTAMP"
