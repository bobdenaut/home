#!/usr/bin/env bash
# test-warp-pihole.sh
# Teste automate: Pi-hole (IPv4/IPv6), DNS UDP+TCP, IP extern (IPv4/IPv6), traceroute
# Folosește: ./test-warp-pihole.sh
# Setări (pune adresele tale dacă diferă)
PIHOLE_V4="${PIHOLE_V4:-172.17.0.2}"
PIHOLE_V6="${PIHOLE_V6:-fd8d:5ad2:24:2:9898:76ff:feab:c3b0}"
TEST_DOMAIN1="ipv6.google.com"
TEST_DOMAIN2="example.com"
RAND_SUB="test-$RANDOM.$(date +%s).example.com"

echoc() { printf "%b\n" "$1"; }
ok()   { echoc "\e[32m[ OK ]\e[0m $1"; }
info() { echoc "\e[34m[INFO]\e[0m $1"; }
warn() { echoc "\e[33m[WARN]\e[0m $1"; }
fail() { echoc "\e[31m[FAIL]\e[0m $1"; }

info "Încep testele pentru Pi‑hole + WARP"
info "Pi-hole IPv4: $PIHOLE_V4"
info "Pi-hole IPv6: $PIHOLE_V6"
echo

# 1) Reachability Pi-hole
info "1) Ping IPv4 -> Pi-hole"
if ping -c 2 -W 1 "$PIHOLE_V4" &>/dev/null; then ok "Ping IPv4 OK"; else warn "Ping IPv4 eșuat"; fi

info "1b) Ping IPv6 -> Pi-hole"
if ping6 -c 2 -W 1 "$PIHOLE_V6" &>/dev/null; then ok "Ping IPv6 OK"; else warn "Ping IPv6 eșuat"; fi
echo

# 2) DNS queries via Pi-hole (UDP and TCP)
info "2) DNS query UDP @Pi-hole -> $TEST_DOMAIN1 (AAAA)"
dig +noall +ques +stats @$PIHOLE_V4 $TEST_DOMAIN1 AAAA
if dig @$PIHOLE_V4 $TEST_DOMAIN1 AAAA +time=2 +tries=1 | grep -qi "ANSWER"; then ok "Pi-hole a răspuns (UDP) pentru $TEST_DOMAIN1 AAAA"; else fail "Fără răspuns UDP pentru $TEST_DOMAIN1"; fi
echo

info "2b) DNS query TCP @Pi-hole -> $TEST_DOMAIN1 (AAAA)"
if dig +tcp @$PIHOLE_V4 $TEST_DOMAIN1 AAAA +time=2 +tries=1 | grep -qi "ANSWER"; then ok "Pi-hole a răspuns (TCP) pentru $TEST_DOMAIN1 AAAA"; else warn "Fără răspuns TCP (normal dacă nu e nevoie)"; fi
echo

info "2c) DNS forward test (random subdomain) -> forțează forward către upstream"
dig +noall +answer @$PIHOLE_V4 $RAND_SUB A +time=2 +tries=1
if dig @$PIHOLE_V4 $RAND_SUB A +time=2 +tries=1 | grep -qi "ANSWER"; then ok "Forward DNS funcționează (Pi-hole forwarded)"; else warn "Forward DNS posibil blocat sau nu a ajuns upstream"; fi
echo

# 3) Verificare log Pi-hole (opțional)
info "3) Verificare simplă: caută în query log local pe Pi-hole (dacă ai acces SSH la Pi-hole)"
if command -v ssh >/dev/null 2>&1 && [ -n "$PIHOLE_SSH" ]; then
  info "Încerc conexiune SSH la Pi-hole ($PIHOLE_SSH) pentru a verifica query log"
  ssh -o BatchMode=yes "$PIHOLE_SSH" "pihole -t --help" &>/dev/null
  if [ $? -eq 0 ]; then
    ok "SSH către Pi-hole funcționează (poți verifica /var/log/pihole.log sau pihole -t)"
  else
    warn "SSH nu e disponibil sau nu s-a putut conecta ($PIHOLE_SSH). Verifică local."
  fi
else
  info "Salt verificare log: exportează variabila PIHOLE_SSH pentru verificare automată (ex: user@172.17.0.2)"
fi
echo

# 4) IP extern (care vede internetul)
info "4) IP extern IPv4 (ar trebui să fie IP WARP, nu IP ISP)"
ipv4_out="$(curl -4 -s https://ifconfig.co || curl -4 -s https://ifconfig.me)"
if [ -n "$ipv4_out" ]; then echoc "\e[31mIPv4 extern: $ipv4_out\e[0m"; else fail "Nu am putut obține IPv4 extern"; fi

info "4b) IP extern IPv6 (ar trebui să fie IPv6 WARP: începe cu 2606:4700:... dacă e Cloudflare)"
ipv6_out="$(curl -6 -s https://ifconfig.co || curl -6 -s https://ifconfig.me)"
if [ -n "$ipv6_out" ]; then echoc "\e[31mIPv6 extern: $ipv6_out\e[0m"; else warn "Nu am putut obține IPv6 extern (posibil WARP/IPv6 neconfigurat)"; fi

# 5) Traceroute / tracepath (opțional)
info "5) Traceroute (IPv4) către 1.1.1.1 (primele 6 salturi)"
if command -v traceroute >/dev/null 2>&1; then
  traceroute -m 6 -n 1.1.1.1 | sed -n '1,8p'
else
  info "traceroute nu e instalat"
fi
echo

info "5b) Traceroute IPv6 către 2606:4700:4700::1111 (primii 6 pași)"
if command -v traceroute >/dev/null 2>&1 && command -v traceroute6 >/dev/null 2>&1; then
  traceroute6 -m 6 -n 2606:4700:4700::1111 | sed -n '1,8p'
elif command -v traceroute >/dev/null 2>&1; then
  traceroute -6 -m 6 -n 2606:4700:4700::1111 | sed -n '1,8p'
else
  info "traceroute6 nu e instalat"
fi
echo

# 6) Test final: curl către cloudflare trace
info "6) Verificare finală Cloudflare trace (vezi ip= la rezultat)"
cftrace="$(curl -s https://www.cloudflare.com/cdn-cgi/trace || true)"
if [ -n "$cftrace" ]; then
  echo "$cftrace" | grep -E '^ip=' || true
  echo "$cftrace" | grep -E '^warp=' || true
  ok "Cloudflare trace afișat (verifică ip si warp)"
else
  warn "Nu am putut obține Cloudflare trace"
fi

echo
info "Teste finalizate. Interpretează:"
echo "- Dacă IPv4/IPv6 extern afișate corespund IP-urilor Cloudflare (ex: 2606:4700:...), WARP este funcțional."
echo "- Dacă dig @PIHOLE răspunde și loghează query‑uri, Pi‑hole filtrează corect."
echo "- Dacă traceroute arată hop spre tunel/WARP imediat, rutele sunt aplicate."

