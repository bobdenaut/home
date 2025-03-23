#/dev/nvme1n1     259:0    0 931.5G  0 disk 
#├─/dev/nvme1n1p1 259:1    0   931G  0 part - root
#└─/dev/nvme1n1p2 259:2    0 523.7M  0 part - cache
#/dev/nvme0n1     259:3    0 953.9G  0 disk 
#├─/dev/nvme0n1p1 259:4    0     2G  0 part - efi
#├─/dev/nvme0n1p2 259:5    0   931G  0 part - root
#└─/dev/nvme0n1p3 259:6    0  20.9G  0 part 

source /etc/os-release
export ID
echo "Using ID=$ID"

setenforce 0

#Install updated ZFS packages
rpm -e --nodeps zfs-fuse
dnf4 config-manager --disable updates
dnf install https://zfsonlinux.org/fedora/zfs-release-2-6$(rpm --eval "%{dist}").noarch.rpm
dnf install https://dl.fedoraproject.org/pub/fedora/linux/releases/${VERSION_ID}/Everything/x86_64/os/Packages/k/kernel-devel-$(uname -r).rpm
dnf install zfs gdisk
modprobe zfs

#Generate /etc/hostid
zgenhostid -f 0x00bab10c

export BOOT_DISK="/dev/disk/by-id/nvme-Micron_2400_MTFDKBA1T0QFM_22423C6886AE"
export BOOT_PART="1"
export BOOT_DEVICE="${BOOT_DISK}-part${BOOT_PART}"

export POOL_PART2="2"
export POOL_DEVICE1="${BOOT_DISK}-part${POOL_PART2}"

export POOL_DISK="/dev/disk/by-id/nvme-KINGSTON_SNV2S1000G_50026B76863BCB72"
export POOL_PART1="1"
export POOL_DEVICE2="${POOL_DISK}-part${POOL_PART1}"

zpool labelclear -f $BOOT_DEVICE
zpool labelclear -f $POOL_DEVICE1
zpool labelclear -f $POOL_DEVICE2

wipefs -a "$BOOT_DISK"
wipefs -a "$POOL_DISK"

sgdisk --zap-all "$BOOT_DISK"
sgdisk --zap-all "$POOL_DISK"

#########################DISK1
#Create EFI boot partition
sgdisk -n "${BOOT_PART}:1m:+2G" -t "${BOOT_PART}:ef00" "$BOOT_DISK"
#Create zpool partition
sgdisk -n "${POOL_PART2}:0:+47G" -t "${POOL_PART2}:bf00" "$BOOT_DISK"
#########################DISK2
#Create zpool partition
sgdisk -n "${POOL_PART1}:0:+47G" -t "${POOL_PART1}:bf00" "$POOL_DISK"

echo '{Opengate5%!}' > /etc/zfs/zroot.key
chmod 000 /etc/zfs/zroot.key

zpool create -f -o ashift=12 \
 -O compression=lz4 \
 -O acltype=posixacl \
 -O xattr=sa \
 -O atime=off \
 -O relatime=on \
 -O dnodesize=auto \
 -O logbias=throughput \
 -O encryption=aes-256-gcm \
 -O keylocation=file:///etc/zfs/zroot.key \
 -O keyformat=passphrase \
 -O checksum=fletcher4 \
 -o compatibility=openzfs-2.3-linux \
 zroot  "$POOL_DEVICE1" "$POOL_DEVICE2"
 
### filesystem layout sample
# https://github.com/Sithuk/ubuntu-server-zfsbootmenu/blob/main/ubuntu_server_encrypted_root_zfs.sh
# other tunning parameters
# https://calomel.org/freebsd_network_tuning.html
###

# Create initial file systems
zfs create -o mountpoint=none zroot/ROOT
zfs create -o mountpoint=/ -o canmount=noauto zroot/ROOT/${ID}
zfs create -o mountpoint=/home zroot/ROOT/${ID}/home
zfs create -o mountpoint=/usr -o canmount=off zroot/ROOT/${ID}/usr
zfs create -o mountpoint=/usr/local zroot/ROOT/${ID}/usr/local
zfs create -o mountpoint=/var -o canmount=off zroot/ROOT/${ID}/var
zfs create -o mountpoint=/var/cache zroot/ROOT/${ID}/var/cache
zfs create -o mountpoint=/var/crash zroot/ROOT/${ID}/var/crash
zfs create -o mountpoint=/var/lib zroot/ROOT/${ID}/var/lib
zfs create -o mountpoint=/var/lib/containers zroot/ROOT/${ID}/var/lib/containers
zfs create -o mountpoint=/var/lib/libvirt zroot/ROOT/${ID}/var/lib/libvirt
zfs create -o mountpoint=/var/log zroot/ROOT/${ID}/var/log
zfs create -o mountpoint=/var/spool zroot/ROOT/${ID}/var/spool
zfs create -o mountpoint=/var/tmp zroot/ROOT/${ID}/var/tmp
zfs create -o mountpoint=/var/www zroot/ROOT/${ID}/var/www
##exclude from snapshots
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/cache
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/crash
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/lib/containers
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/lib/libvirt
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/log
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/spool
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/tmp
zfs set com.sun:auto-snapshot=false zroot/ROOT/${ID}/var/www
##set sync=standard for zroot, off for the rest
zfs set sync=standard zroot
zfs set sync=disabled zroot/ROOT/${ID}/var/cache
zfs set sync=disabled zroot/ROOT/${ID}/var/crash
zfs set sync=disabled zroot/ROOT/${ID}/var/log
zfs set sync=disabled zroot/ROOT/${ID}/var/spool
zfs set sync=disabled zroot/ROOT/${ID}/var/tmp
zfs set sync=disabled zroot/ROOT/${ID}/var/www
#set blocksize
#calculate size:
#> find /home/liviu -type f -path "*/.zfs/*" -or -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}'
zfs set recordsize=512K zdev
zfs set recordsize=512K zroot
zfs set recordsize=128K zroot/ROOT/${ID}/home
zfs set recordsize=1M zroot/ROOT/${ID}/var/lib/libvirt
zfs set recordsize=1M zroot/ROOT/${ID}/var/lib/containers
###after user creation#####################################
# create aditional datasets
#zfs create -o mountpoint=/home/liviu/.cache zroot/ROOT/${ID}/home/liviu_cache
#zfs create -o mountpoint=/home/liviu/.mozilla zroot/ROOT/${ID}/home/liviu_mozilla
#zfs create -o mountpoint=/home/liviu/.librewolf zroot/ROOT/${ID}/home/liviu_librewolf
#####################################################
zpool set bootfs=zroot/ROOT/${ID} zroot

#Export, then re-import with a temporary mountpoint of /mnt
zpool export zroot
zpool import -N -R /mnt zroot
zfs load-key -L prompt zroot

zfs mount zroot/ROOT/${ID}
zfs mount -a

#root@localhost-live:~# tree /mnt
#/mnt
#├── home
#├── usr
#│   └── local
#├── var
#│   ├── cache
#│   ├── crash
#│   ├── lib
#│   │   ├── containers
#│   │   └── libvirt
#│   ├── log
#│   ├── spool
#│   ├── tmp
#│   └── www
#└── zroot

#Verify that everything is mounted correctly
mount | grep mnt

#Update device symlinks
udevadm trigger

#@DEPRECATED
#Install Fedora---------------------------------COPY FROM LIVE---------------------------------
mkdir /run/install
mount /run/initramfs/live/LiveOS/squashfs.img /run/install

rsync -pogAXtlHrDx \
 --stats \
 --exclude=/boot/efi/* \
 --exclude=/etc/machine-id \
 --info=progress2 \
 /run/install/ /mnt
 
cp /etc/hostid /mnt/etc
 #------------------------------------------------------------------------------------------------------------------
zgenhostid -f 0x00bab10c
mkdir -p /mnt/{proc,sys,dev/pts}
mount -t proc proc /mnt/proc
mount -t sysfs sys /mnt/sys
mount -B /dev /mnt/dev
mount -t devpts pts /mnt/dev/pts

#install base core
export VERSION_ID="$VERSION_ID"
dnf4 --installroot=/mnt --releasever=$VERSION_ID group install core
dnf4 --installroot=/mnt install glibc-langpack-en
#preserve files and key
mkdir -p /mnt/etc/zfs
cp /etc/zfs/zroot.key /mnt/etc/zfs
mv /mnt/etc/resolv.conf /mnt/etc/resolv.conf.orig
cp -L /etc/resolv.conf /mnt/etc
#Chroot into the new OS
chroot /mnt /bin/bash

#Configure Dracut to load ZFS support
cat << EOF > /etc/dracut.conf.d/zol.conf
nofsck="yes"
add_dracutmodules+=" zfs "
omit_dracutmodules+=" btrfs "
install_items+=" /etc/zfs/zroot.key "
EOF

#Install required packages
source /etc/os-release
rpm -e --nodeps zfs-fuse
dnf4 config-manager --disable updates
dnf install https://dl.fedoraproject.org/pub/fedora/linux/releases/${VERSION_ID}/Everything/x86_64/os/Packages/k/kernel-devel-$(uname -r).rpm
dnf --releasever=${VERSION_ID} install  https://zfsonlinux.org/fedora/zfs-release-2-6$(rpm --eval "%{dist}").noarch.rpm
dnf install efibootmgr efi-filesystem fwupd grubby kernel mactel-boot mokutil shim-ia32 shim-x64

dnf install  zfs zfs-dracut
#Regenerate initramfs
dracut --force --regenerate-all

#Install and configure ZFSBootMenu
#Set ZFSBootMenu properties on datasets

#Assign command-line arguments to be used when booting the final kernel
zfs set org.zfsbootmenu:commandline="quiet rhgb" zroot/ROOT

#Setup key caching in ZFSBootMenu.
zfs set org.zfsbootmenu:keysource="zroot/ROOT/${ID}" zroot

#Create a vfat filesystem
mkfs.vfat -F32 "$BOOT_DEVICE"

#Create an fstab entry and mount
cat << EOF >> /etc/fstab
$( blkid | grep /dev/nvme0n1p1 | cut -d ' ' -f 2 ) /boot/efi vfat defaults 0 0
EOF

mkdir -p /boot/efi
mount /boot/efi

#Install ZFSBootMenu
mkdir -p /boot/efi/EFI/ZBM
curl -o /boot/efi/EFI/ZBM/VMLINUZ.EFI -L https://get.zfsbootmenu.org/efi
cp /boot/efi/EFI/ZBM/VMLINUZ.EFI /boot/efi/EFI/ZBM/VMLINUZ-BACKUP.EFI

#Configure EFI boot entries
mount -t efivarfs efivarfs /sys/firmware/efi/efivars

efibootmgr -c -d "$BOOT_DISK" -p "$BOOT_PART" \
  -L "ZFSBootMenu (Backup)" \
  -l '\EFI\ZBM\VMLINUZ-BACKUP.EFI'

efibootmgr -c -d "$BOOT_DISK" -p "$BOOT_PART" \
  -L "ZFSBootMenu" \
  -l '\EFI\ZBM\VMLINUZ.EFI'
  
# Reset resolv.conf
mv /etc/resolv.conf.orig /etc/resolv.conf
systemd-firstboot --prompt
passwd

fixfiles onboot
#Exit the chroot, unmount everything
exit
umount -n -R /mnt

zpool export zroot
reboot
