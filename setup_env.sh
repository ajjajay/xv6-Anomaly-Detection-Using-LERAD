#!/bin/bash
set -e

echo "Updating package lists..."
sudo apt-get update

echo "Installing build essentials and QEMU..."
sudo apt-get install -y build-essential gdb-multiarch qemu-system-misc gcc-riscv64-unknown-elf

echo "Verifying installation..."
riscv64-unknown-elf-gcc --version
qemu-system-riscv64 --version

echo "Environment setup complete!"
