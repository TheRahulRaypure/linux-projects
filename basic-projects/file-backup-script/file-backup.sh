#!/bin/bash


# Ask the user to enter a source directory
read -p "Enter the path of the folder you want to back up: " source_dir



# Check if the source folder exists
if [ ! -d "$source_dir"  ]; then
	echo "The folder '$source_dir' does not exist."
	exit 1
fi



backup_dir=~/backups

mkdir -p "$backup_dir"

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")


backup_path="${backup_dir}/backup_${timestamp}"

cp -r "$source_dir" "$backup_path"

echo "Backup completed successfully"
echo "Backup Store at : $backup_path"


