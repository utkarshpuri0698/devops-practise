#!/bin/bash

# Automated Backup Script
# Creates a compressed backup with a timestamp

SOURCE_DIR="$HOME/devops-practise"
BACKUP_DIR="$HOME/backups"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/devops-practise_$TIMESTAMP.tar.gz"

echo "========================================"
echo "       AUTOMATED BACKUP"
echo "========================================"

# Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Check source directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR: Source directory does not exist."
    exit 1
fi

# Create compressed backup
tar -czf "$BACKUP_FILE" -C "$HOME" devops-practise

if [ $? -eq 0 ]; then
    echo "Backup successful!"
    echo "Backup file: $BACKUP_FILE"
else
    echo "ERROR: Backup failed."
    exit 1
fi

echo "========================================"
echo "Backup completed."
echo "========================================"
