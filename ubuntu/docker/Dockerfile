# === Imagine de bază Pi-hole ===
FROM pihole/pihole@sha256:90a1412b3d3037d1c22131402bde19180d898255b584d685c84d943cf9c14821

ENV DEBIAN_FRONTEND=noninteractive
SHELL ["/bin/sh", "-c"]

# === Instalare Unbound și unelte de rețea ===
RUN apk add --no-cache \
    unbound \
    curl \
    ca-certificates \
    bash \
    bind-tools \
    iputils \
    iproute2 \
    tcpdump \
    netcat-openbsd \
    drill \
    wget

# Creare director loguri Unbound + fișier log
RUN mkdir -p /var/log/unbound && touch /var/log/unbound/unbound.log && chown -R unbound:unbound /var/log/unbound

# === Folder pentru cache Unbound și permisiuni corecte ===
RUN mkdir -p /var/lib/unbound && chown -R unbound:unbound /var/lib/unbound

# === Config Unbound ===
RUN mkdir -p /etc/unbound/unbound.conf.d && chown -R unbound:unbound /etc/unbound/
#COPY unbound-pihole.conf /etc/unbound/unbound.conf.d/pihole.conf

# === Variabile porturi parametrizabile în container (porturi standard) ===
ENV PIHOLE_WEB_PORT=80 \
    PIHOLE_WEB_SSL_PORT=443 \
    PIHOLE_DNS_UDP=53 \
    PIHOLE_DNS_TCP=53 \
    UNBOUND_PORT=5335

# === Direcționare Pi-hole către Unbound ===
ENV PIHOLE_DNS_1=127.0.0.1#${UNBOUND_PORT} \
    PIHOLE_DNS_2=no

# === Expunere porturi container (standard) ===
EXPOSE ${PIHOLE_WEB_PORT}/tcp ${PIHOLE_WEB_SSL_PORT}/tcp \
       ${PIHOLE_DNS_UDP}/udp ${PIHOLE_DNS_TCP}/tcp

# === Start-up (Pi-hole + Unbound) ===
# Folosește variabila UNBOUND_PORT și inițializează Pi-hole prin s6-init
CMD unbound -d -p ${UNBOUND_PORT} & /s6-init

