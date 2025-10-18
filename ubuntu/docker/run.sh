#!/bin/bash
set -e

CONTAINER_NAME="pihole-unbound"
IMAGE="localhost/bobdenaut/pihole-unbound:arm64"

# Porturi rootless (>1024) pe host
HOST_WEB_PORT=8080       # HTTP Web UI
HOST_WEB_SSL_PORT=8443   # HTTPS Web UI
HOST_DNS_PORT=5353       # DNS UDP/TCP
HOST_UNBOUND_PORT=5335   # Unbound intern

# Porturi standard în container
CONTAINER_WEB_PORT=80
CONTAINER_WEB_SSL_PORT=443
CONTAINER_DNS_UDP=53
CONTAINER_DNS_TCP=53
CONTAINER_UNBOUND_PORT=5353

# Oprește și șterge containerul existent
if podman ps -a --format "{{.Names}}" | grep -q "^${CONTAINER_NAME}$"; then
    echo "Oprire și ștergere container existent: ${CONTAINER_NAME}"
    podman stop ${CONTAINER_NAME} >/dev/null 2>&1 || true
    podman rm ${CONTAINER_NAME} >/dev/null 2>&1 || true
fi

# Rulează containerul rootless cu porturi mapate
podman run -d --pull=never \
  --name ${CONTAINER_NAME} \
  -p ${HOST_WEB_PORT}:${CONTAINER_WEB_PORT}/tcp \
  -p ${HOST_WEB_SSL_PORT}:${CONTAINER_WEB_SSL_PORT}/tcp \
  -p ${HOST_DNS_PORT}:${CONTAINER_DNS_TCP}/tcp \
  -p ${HOST_DNS_PORT}:${CONTAINER_DNS_UDP}/udp \
  -e PIHOLE_WEB_PORT=${CONTAINER_WEB_PORT} \
  -e PIHOLE_WEB_SSL_PORT=${CONTAINER_WEB_SSL_PORT} \
  -e PIHOLE_DNS_UDP=${CONTAINER_DNS_UDP} \
  -e PIHOLE_DNS_TCP=${CONTAINER_DNS_TCP} \
  -e UNBOUND_PORT=${CONTAINER_UNBOUND_PORT} \
  -e TZ="Europe/Bucharest" \
  -e FTLCONF_webserver_api_password="admin" \
  -v "$(pwd)/etc-pihole:/etc/pihole" \
  -v "$(pwd)/etc-dnsmasq.d:/etc/dnsmasq.d" \
  ${IMAGE}

echo "Containerul ${CONTAINER_NAME} a fost pornit rootless."
echo "Web UI: http://localhost:${HOST_WEB_PORT} / https://${HOST_WEB_SSL_PORT}"
echo "DNS: 127.0.0.1:${HOST_DNS_PORT}"
echo "Verifică logurile cu:"
echo "  podman logs -f ${CONTAINER_NAME}"

