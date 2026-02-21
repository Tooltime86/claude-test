#!/bin/bash
# Install Ollama on Raspberry Pi 5 (ARM64 / aarch64)

set -e

# Check that we are running on ARM64
ARCH=$(uname -m)
if [ "$ARCH" != "aarch64" ]; then
    echo "Warning: This script is intended for ARM64 (aarch64) systems like the Raspberry Pi 5."
    echo "Detected architecture: $ARCH"
    read -r -p "Continue anyway? [y/N] " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
        echo "Aborting."
        exit 1
    fi
fi

echo "==> Updating package lists..."
if ! sudo apt-get update; then
    echo "ERROR: 'apt-get update' failed. Check your internet connection and that you have sudo privileges."
    exit 1
fi

echo "==> Installing prerequisites (curl)..."
if ! sudo apt-get install -y curl; then
    echo "ERROR: Failed to install curl. Try running 'sudo apt-get install -y curl' manually."
    exit 1
fi

# Note: The official Ollama installer is fetched over HTTPS and executed directly.
# Review the script at https://ollama.com/install.sh before running if you prefer.
echo "==> Downloading and running the Ollama install script..."
if ! curl -fsSL https://ollama.com/install.sh | sh; then
    echo "ERROR: Ollama installation failed. Check the output above for details."
    echo "You can also try the manual steps at https://ollama.com/download/linux"
    exit 1
fi

echo ""
echo "==> Ollama installation complete!"
echo ""
echo "Useful commands:"
echo "  Start the Ollama server:       ollama serve"
echo "  Pull a lightweight model:      ollama pull tinyllama"
echo "  Run a model interactively:     ollama run tinyllama"
echo "  List downloaded models:        ollama list"
echo ""
echo "The Ollama service should start automatically on boot."
echo "To check its status: sudo systemctl status ollama"
