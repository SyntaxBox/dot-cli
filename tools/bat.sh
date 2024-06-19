#!/bin/bash

# Function to get the latest release URL from GitHub
get_latest_release() {
  curl --silent "https://api.github.com/repos/sharkdp/bat/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

# Update package list and install necessary dependencies
echo "Updating package list and installing dependencies..."
sudo apt update
sudo apt install -y wget unzip

# Get the latest release tag
latest_release=$(get_latest_release)
echo "Latest release of bat: $latest_release"

# Download the latest release tarball
echo "Downloading bat $latest_release..."
wget https://github.com/sharkdp/bat/releases/download/${latest_release}/bat-${latest_release}-x86_64-unknown-linux-gnu.tar.gz

# Extract the tarball
echo "Extracting bat..."
tar -xzf bat-${latest_release}-x86_64-unknown-linux-gnu.tar.gz

# Move bat binary to /usr/local/bin
echo "Installing bat..."
sudo mv bat-${latest_release}-x86_64-unknown-linux-gnu/bat /usr/local/bin/

# Clean up
echo "Cleaning up..."
rm -rf bat-${latest_release}-x86_64-unknown-linux-gnu*
echo "bat installation complete!"

# Verify the installation
echo "Verifying the installation..."
bat --version
