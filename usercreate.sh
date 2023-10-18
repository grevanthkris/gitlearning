#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script as root."
  exit 1
fi

# Prompt for username and password
read -p "Enter username: " username
read -s -p "Enter password: " password

# Create the user
useradd -m "$username"

# Set the password for the user
echo "$username:$password" | chpasswd

echo "User $username created."
