#!/bin/bash
# Monitorizare CPU temp + ventilatoare ASUS ROG pe coloane verticale

# Detectăm temperatura CPU (x86_pkg_temp)
TEMP_PATH=""
for z in /sys/class/thermal/thermal_zone*/type; do
    if grep -iq "x86_pkg_temp" "$z"; then
        TEMP_PATH="${z%/type}/temp"
        break
    fi
done

if [[ -z "$TEMP_PATH" ]]; then
    echo "Nu am găsit x86_pkg_temp. Instalează lm-sensors și verifică hwmon."
    exit 1
fi

# Detectăm ventilatoarele hwmon (CPU/GPU/MID)
FAN_PATHS=()
for f in /sys/class/hwmon/hwmon*/fan*_input; do
    FAN_PATHS+=("$f")
done

if [[ ${#FAN_PATHS[@]} -eq 0 ]]; then
    echo "Nu am găsit ventilatoare în hwmon."
    exit 1
fi

# Titluri
HEADER="Temp(°C)"
for i in "${!FAN_PATHS[@]}"; do
    HEADER+=" | Fan$((i+1))(RPM)"
done
echo "$HEADER"
echo "-------------------------------------------------------"

# Loop de afișare
while true; do
    TEMP=$(cat "$TEMP_PATH")
    # Majoritatea x86_pkg_temp e în milicelsius
    TEMP_C=$((TEMP / 1000))
    LINE="$TEMP_C"
    for f in "${FAN_PATHS[@]}"; do
        FAN_RPM=$(cat "$f")
        LINE+=" | $FAN_RPM"
    done
    echo "$LINE"
    sleep 1
done

