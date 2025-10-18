#!/bin/bash

podman save -o pihole-unbound.tar localhost/bobdenaut/pihole-unbound:arm64
echo "\n"
ls -lah pihole-unbound.tar
