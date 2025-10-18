#!/bin/bash

INTF="enp109s0"
LINK_INFO=$(ethtool $INTF | grep -E "Speed|Duplex")

SPEED=$(echo "$LINK_INFO" | grep Speed | awk '{print $2}' | tr -d 'Mb/s')
DUPLEX=$(echo "$LINK_INFO" | grep Duplex | awk '{print $2}')

echo "$INTF stats: $SPEED $DUPLEX"
# dacă viteza e <1000 sau duplex nu e full, forțează
if [ "$SPEED" -lt 1000 ] || [ "$DUPLEX" != "Full" ]; then
    echo "Shit, lets correct it!"
    /sbin/ethtool -s $INTF speed 1000 duplex full autoneg on
    echo "The new values: $SPEED $DUPLEX"
fi
