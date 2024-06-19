#!/bin/bash

echo "Installing tools..."
for script in ./tools/*.sh; do
    chmod +x "$script"
    "$script"
done
echo "Tools installation complete!"
