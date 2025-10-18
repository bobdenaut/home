Variabile de mediu necesare
===========================
Containerul utilizează aceste variabile pentru porturi și configurări:
----------------------------------------------------------------------
ENV_PIHOLE_WEB_PORT=80
ENV_PIHOLE_WEB_SSL_PORT=443
ENV_PIHOLE_DNS_UDP=53
ENV_PIHOLE_DNS_TCP=53
ENV_UNBOUND_PORT=5335
Direcționare Pi-hole către Unbound
----------------------------------
ENV_PIHOLE_DNS_1=127.0.0.1#5335
ENV_PIHOLE_DNS_2=no
Parolă web UI Pi-hole
---------------------
ENV_FTLCONF_webserver_api_password="opengate5%"
Fus orar
--------
ENV_TZ="Europe/Bucharest"


Mount-urile recomandate în Podman / Docker
==========================================
Config Unbound
--------------
/ssd/etc-unbound/:/etc/unbound/

Config Pi-hole
--------------
/ssd/etc-pihole:/etc/pihole
/ssd/etc-dnsmasq.d:/etc/dnsmasq.d

