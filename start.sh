#!/bin/bash

# Check if /dev/kvm exists and is usable
if [ ! -e /dev/kvm ]; then
    echo "Error: /dev/kvm not found. Please enable KVM acceleration."
    exit 1
fi

# Run the container with the required parameters
docker run -it \
    --device /dev/kvm \
    -e EXTRA="${EXTRA:- -display none -vnc 0.0.0.0:99,password=off}" \
    -p 5555:5555 \
    -p 5999:5999 \
    sickcodes/dock-droid:latest
