# 📦 File Backup Script

## 📌 Description

This shell script backs up a given source directory to a `~/backups` folder with a unique timestamp. It’s ideal for automating backups of important documents, project files, and more.

## 🛠️ Features

- Takes user input for source directory
- Checks if the folder exists
- Creates timestamped backup folders
- Works recursively on all files and subfolders

## 🧾 Script

```bash
#!/bin/bash

read -p "📁 Enter the path of the folder you want to back up: " source_dir

if [ ! -d "$source_dir" ]; then
  echo "❌ The folder '$source_dir' does not exist."
  exit 1
fi

backup_base=~/backups
mkdir -p "$backup_base"

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_path="${backup_base}/backup_${timestamp}"

cp -r "$source_dir" "$backup_path"

echo "✅ Backup completed successfully!"
echo "🗂️  Backup stored at: $backup_path"

