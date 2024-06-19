#!/bin/bash

# Function to get the latest release URL from GitHub
get_latest_release() {
  curl --silent "https://api.github.com/repos/ajeetdsouza/zoxide/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

# Update package list and install necessary dependencies
echo "Updating package list and installing dependencies..."
sudo apt update
sudo apt install -y curl wget

# Get the latest release tag
latest_release=$(get_latest_release)
echo "Latest release of zoxide: $latest_release"

# Download the latest release tarball
echo "Downloading zoxide $latest_release..."
wget https://github.com/ajeetdsouza/zoxide/releases/download/${latest_release}/zoxide-${latest_release}-x86_64-unknown-linux-gnu.tar.gz

# Extract the tarball
echo "Extracting zoxide..."
tar -xzf zoxide-${latest_release}-x86_64-unknown-linux-gnu.tar.gz

# Move zoxide binary to /usr/local/bin
echo "Installing zoxide..."
sudo mv zoxide /usr/local/bin/

# Clean up
echo "Cleaning up..."
rm -rf zoxide-${latest_release}-x86_64-unknown-linux-gnu.tar.gz
echo "zoxide installation complete!"

# Verify the installation
echo "Verifying the installation..."
zoxide --version

echo "zoxide installation complete!"
