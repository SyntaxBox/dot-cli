#!/bin/bash

# Function to get the latest release URL from GitHub
get_latest_release() {
  curl --silent "https://api.github.com/repos/eza-community/eza/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

# Update package list and install necessary dependencies
echo "Updating package list and installing dependencies..."
sudo apt update
sudo apt install -y curl wget

# Get the latest release tag
latest_release=$(get_latest_release)
echo "Latest release of eza: $latest_release"

# Download the latest release tarball
echo "Downloading eza $latest_release..."
wget https://github.com/eza-community/eza/releases/download/${latest_release}/eza-${latest_release}-x86_64-unknown-linux-musl.tar.gz

# Extract the tarball
echo "Extracting eza..."
tar -xzf eza-${latest_release}-x86_64-unknown-linux-musl.tar.gz

# Move eza binary to /usr/local/bin
echo "Installing eza..."
sudo mv eza /usr/local/bin/

# Clean up
echo "Cleaning up..."
rm -rf eza-${latest_release}-x86_64-unknown-linux-musl.tar.gz
echo "eza installation complete!"

# Verify the installation
echo "Verifying the installation..."
eza --version

echo "eza installation complete!"
