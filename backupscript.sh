#!/bin/bash

# Directory to back up
source_dir="/root/revanth"

# Backup location
backup_dir="/root/backup"

# Create a timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# Create a compressed archive with a timestamp
backup_file="$backup_dir/backup_$timestamp.tar.gz"

# Create the backup
tar -czf "$backup_file" "$source_dir"

echo "Backup created at $backup_file"
