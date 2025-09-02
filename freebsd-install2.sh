export DISK1="vtbd0" # <-- your disk1 here
export DISK2="vtbd1" # <-- your disk2 here

# GPT pe ambele discuri
gpart create -s gpt ${DISK1}
gpart create -s gpt ${DISK2}

# EFI partitions
gpart add -t efi -a 4k -s 512M -l efi0 ${DISK1}
gpart add -t freebsd-zfs -a 4k -l zdata0 ${DISK1}
gpart add -t efi -a 4k -s 512M -l efi1 ${DISK2}
gpart add -t freebsd-zfs -a 4k -l zdata1 ${DISK2}

# GELI (criptare)
geli init -g -s 4k gpt/zdata0
geli init -g -s 4k gpt/zdata1
geli attach gpt/zdata0
geli attach gpt/zdata1

# Mirror EFI (pentru boot)
gmirror label efi gpt/efi0 gpt/efi1
gmirror load
gmirror status     

# Creează zpool zroot
zpool create -f -o ashift=12 \
 -O compression=lz4 \
 -O acltype=posixacl \
 -O xattr=sa \
 -O atime=off \
 -O relatime=off \
 -O dnodesize=auto \
 -O logbias=throughput \
 -O checksum=fletcher4 \
 -m none -R /mnt zroot gpt/zdata0.eli gpt/zdata1.eli

# ===== STRUCTURA DATASETS =====
# Boot environments (unul per release)
zfs create -o mountpoint=none zroot/ROOT
zfs create -o mountpoint=/ zroot/ROOT/freebsd14
# când instalezi 15:
# zfs create -o mountpoint=/ zroot/ROOT/freebsd15

# Home (comun)
zfs create -o mountpoint=/home zroot/home

# /usr (split pentru control)
zfs create -o mountpoint=/usr -o canmount=off zroot/usr
zfs create -o mountpoint=/usr/local zroot/usr/local   # aplicații pkg/ports
zfs create -o mountpoint=/usr/ports zroot/usr/ports   # ports tree comun

# /var (split)
zfs create -o mountpoint=/var -o canmount=off zroot/var
zfs create -o mountpoint=/var/log -o exec=off -o setuid=off zroot/var/log
zfs create -o mountpoint=/var/tmp -o setuid=off zroot/var/tmp
zfs create -o mountpoint=/var/db zroot/var/db
zfs create -o mountpoint=/var/db/postgres zroot/var/db/postgres
# atenție: /var/db/pkg rămâne în ROOT

# /tmp separat
zfs create -o mountpoint=/tmp zroot/tmp

# ===== OPTIMIZĂRI =====
# fără snapshots pe directoare volatile
zfs set com.sun:auto-snapshot=false zroot/var/log
zfs set com.sun:auto-snapshot=false zroot/var/tmp
zfs set com.sun:auto-snapshot=false zroot/tmp

# sync tuning
zfs set sync=standard zroot
zfs set sync=disabled zroot/var/log
zfs set sync=disabled zroot/var/tmp
zfs set sync=disabled zroot/tmp

# recordsize (poți regla după workload)
zfs set recordsize=16k zroot
zfs set recordsize=16k zroot/var/db/postgres
zfs set recordsize=128k zroot/usr/ports

# Set bootfs
zpool set bootfs=zroot/ROOT/freebsd14 zroot

# Export la final
zpool export zroot
