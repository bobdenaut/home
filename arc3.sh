#!/bin/bash
# ARC live monitor în terminal, colorat

if [ ! -f /proc/spl/kstat/zfs/arcstats ]; then
    echo "Nu am găsit /proc/spl/kstat/zfs/arcstats. ZFS nu pare activ."
    exit 1
fi

# funcție pentru a extrage și converti în MB
get_mb() {
    awk -v key="$1" '$1 == key {printf "%.2f", $3/1024/1024}' /proc/spl/kstat/zfs/arcstats
}

# funcție pentru hits/misses
get_val() {
    awk -v key="$1" '$1 == key {print $3}' /proc/spl/kstat/zfs/arcstats
}

# culori
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

while true; do
    clear
    echo "=== ARC ZFS Live Monitor ==="
    echo

    SIZE=$(get_mb "size")
    TARGET=$(get_mb "c")
    MRU=$(get_mb "mru_size")
    MFU=$(get_mb "mfu_size")

    HITS=$(get_val "hits")
    MISSES=$(get_val "misses")
    TOTAL=$((HITS + MISSES))
    if [ $TOTAL -ne 0 ]; then
        HIT_RATE=$(awk "BEGIN {printf \"%.2f\", ($HITS/$TOTAL)*100}")
    else
        HIT_RATE=0
    fi

    # hit rate color
    if (( $(echo "$HIT_RATE >= 95" | bc -l) )); then
        HIT_COLOR=$GREEN
    elif (( $(echo "$HIT_RATE >= 90" | bc -l) )); then
        HIT_COLOR=$YELLOW
    else
        HIT_COLOR=$RED
    fi

    # ARC size vs target color
    if (( $(echo "$SIZE >= $TARGET" | bc -l) )); then
        SIZE_COLOR=$RED
    else
        SIZE_COLOR=$GREEN
    fi

    echo -e "ARC current size: ${SIZE_COLOR}$SIZE MB${RESET} / target: ${TARGET} MB"
    echo -e "MRU size:         $MRU MB"
    echo -e "MFU size:         $MFU MB"
    echo -e "Total hits:       $HITS"
    echo -e "Total misses:     $MISSES"
    echo -e "ARC hit rate:     ${HIT_COLOR}$HIT_RATE %${RESET}"

    sleep 5
done

