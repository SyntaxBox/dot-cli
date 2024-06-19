#!/bin/bash

# Function to get the latest release URL from GitHub
get_latest_release() {
  curl --silent "https://api.github.com/repos/andreafrancia/trash-cli/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/'
}

# Update package list and install necessary dependencies
echo "Updating package list and installing dependencies..."
sudo apt update
sudo apt install -y python3 python3-pip

# Get the latest release tag
latest_release=$(get_latest_release)
echo "Latest release of trash-cli: $latest_release"

# Download the latest release tarball
echo "Downloading trash-cli $latest_release..."
wget https://github.com/andreafrancia/trash-cli/archive/refs/tags/${latest_release}.tar.gz

# Extract the tarball
echo "Extracting trash-cli..."
tar -xzf ${latest_release}.tar.gz

# Move into the directory and install trash-cli
echo "Installing trash-cli..."
cd trash-cli-${latest_release#v}
sudo python3 setup.py install

# Clean up
echo "Cleaning up..."
cd ..
rm -rf ${latest_release}.tar.gz trash-cli-${latest_release#v}
echo "trash-cli installation complete!"

# Verify the installation
echo "Verifying the installation..."
trash --version

echo "trash-cli installation complete!"

