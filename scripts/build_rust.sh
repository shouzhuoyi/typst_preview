#!/bin/bash

# Detect host CPU architecture
ARCH=$(uname -m)

# Set the target based on architecture
case $ARCH in
    aarch64)
        TARGET="aarch64-apple-darwin"
        ;;  
    x86_64)
        TARGET="x86_64-apple-darwin"
        ;;  
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;  
esac

# Call cargo to build for the detected target
cargo build --target $TARGET
