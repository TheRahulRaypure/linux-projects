# 🧑‍💻 User Info Script

## 📌 Description

This script displays detailed information about the currently logged-in user. It helps you understand how Linux stores user data and how to extract it using shell commands.

## 🔍 What It Shows

- Username
- UID (User ID)
- GID (Group ID)
- Home directory
- Login shell
- Group memberships

## ⚙️ Script

```bash
#!/bin/bash

username=$(whoami)

echo "🔍 User Information for: $username"
echo "-----------------------------------"

uid=$(id -u)
echo "🆔 User ID (UID): $uid"

gid=$(id -g)
echo "👥 Group ID (GID): $gid"

home_dir=$(getent passwd $username | cut -d: -f6)
echo "🏠 Home Directory: $home_dir"

login_shell=$(getent passwd $username | cut -d: -f7)
echo "💻 Login Shell: $login_shell"

groups=$(groups)
echo "👥 Groups: $groups"

