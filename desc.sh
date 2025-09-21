#!/bin/bash
# Script generator: din zfs get all → comenzi zfs set, fără snapshots/VM/Windows

INPUT_FILE="zfs_all.txt"
OUTPUT_SCRIPT="zfs_set_generated.sh"

if [ ! -f "$INPUT_FILE" ]; then
    echo "Fișierul $INPUT_FILE nu există. Rulează mai întâi: zfs get all > $INPUT_FILE"
    exit 1
fi

printf "#!/bin/bash\n# Script generat din zfs get all\n\n" > "$OUTPUT_SCRIPT"

# Proprietăți de păstrat
PROPS="compression atime relatime xattr acltype recordsize logbias sync primarycache secondarycache"

# Filtrăm doar dataset-urile reale (filesystem/volume), nu snapshot-uri
awk '$2=="TYPE" {next} {print}' "$INPUT_FILE" | grep -v '@' | grep -v -E 'Win11|VMs' | while IFS= read -r line; do
    DATASET=$(echo "$line" | awk '{print $1}')
    PROP=$(echo "$line" | awk '{print $2}')
    VALUE=$(echo "$line" | awk '{print $3}')
    if echo "$PROPS" | grep -qw "$PROP"; then
        echo "zfs set $PROP=$VALUE $DATASET" >> "$OUTPUT_SCRIPT"
    fi
done

chmod +x "$OUTPUT_SCRIPT"
echo "Script generat: $OUTPUT_SCRIPT"

