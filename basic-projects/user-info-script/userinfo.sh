#!/bin/bash

# Get current username
username=$(whoami)

# Print header
echo "🔍 User Information for: $username"
echo "-----------------------------------"

# Get UID
uid=$(id -u)
echo "User ID (UID): $uid"

# get GID
gid=$(id -g)
echo "Group ID (GID): $gid"

# Get and print home directoru using getent
home_dir=$(getent passwd $username | cut -d: -f6)
echo "Home Directory: $home_dir"

# get and print login shell
login_shell=$(getent passwd $username | cut -d: -f7)
echo "Login Shell: $login_shell"

groups=$(groups)
echo "Groups : $groups" 






