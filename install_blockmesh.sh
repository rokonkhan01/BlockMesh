#!/bin/bash

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install -y screen

# Create necessary directories
mkdir -p target/release

# Download the blockmesh CLI binary
curl -L https://github.com/block-mesh/block-mesh-monorepo/releases/download/v0.0.392/blockmesh-cli-x86_64-unknown-linux-gnu.tar.gz -o blockmesh-cli.tar.gz

# Extract the binary
tar -xzf blockmesh-cli.tar.gz --strip-components=3 -C target/release

# Login to blockmesh CLI
./target/release/blockmesh-cli login --email 'Your email address' --password 'Your_Passward'
