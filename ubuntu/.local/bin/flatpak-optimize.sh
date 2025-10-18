#!/bin/bash
set -e

echo "=== 1️⃣ Elimină aplicațiile și runtime-urile nefolosite ==="
flatpak uninstall --unused -y

echo "=== 2️⃣ Curăță cache-ul și metadata nefolosite ==="
flatpak repair --user
flatpak repair --system

echo "=== 3️⃣ Actualizare Flatpak-uri la ultimele versiuni stabile ==="
flatpak update -y

echo "✅ Flatpak optimizat!"

