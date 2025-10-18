#!/bin/bash

podman build --arch arm64 --format docker -t bobdenaut/pihole-unbound:arm64 .
echo "podman images:\n"
podman images

