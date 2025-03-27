############################### README ###############################################################
# this script was made and tested with 2 disks in mind, same size in order to create RAID 0 (stripe) #
# 1) start live environment                                                                          #
# 2) drop immediately to shell - do not install                                                      #
# 3) once you're in the shell, execute this script but first edit the script with your disks         #
############################### LAYOUT ###############################################################

#NAME                                       MOUNTPOINT
#zroot                                      none
#zroot/ROOT                                 none
#zroot/ROOT/freebsd                         /
#zroot/ROOT/home                            /home
#zroot/ROOT/tmp                             /tmp
#zroot/ROOT/usr                             /usr
#zroot/ROOT/var                             /var
#zroot/ROOT/var/cache                       /var/cache
#zroot/ROOT/var/crash                       /var/crash
#zroot/ROOT/var/db                          /var/db
#zroot/ROOT/var/lib                         /var/lib
#zroot/ROOT/var/lib/bhyve                   /var/lib/bhyve
#zroot/ROOT/var/lib/docker                  /var/lib/docker
#zroot/ROOT/var/lib/libvirt                 /var/lib/libvirt
#zroot/ROOT/var/log                         /var/log
#zroot/ROOT/var/tmp                         /var/tmp
#zroot/ROOT/var/www                         /var/www
#------------------------------------------------------------------------
export DISK1="vtbd0" # <-- your disk1 here
export DISK2="vtbd1" # <-- your disk2 here
gpart create -s gpt ${DISK1}
gpart create -s gpt ${DISK2}
#create /dev/gpt/efi0
gpart add -t efi -a 4k -s 512M -l efi0 ${DISK1}
gpart add -t freebsd-zfs -a 4k -l zdata0 ${DISK1}
#create /dev/gpt/efi1
gpart add -t efi -a 4k -s 512M -l efi1 ${DISK2}
gpart add -t freebsd-zfs -a 4k -l zdata1 ${DISK2}
#create /dev/gpt/zdata0.eli and /dev/zdata1.eli
#disks encryption
geli init -g -s 4k gpt/zdata0
geli init -g -s 4k gpt/zdata1
#attach /dev/gpt/zdata0 and /dev/zdata1
geli attach gpt/zdata0
geli attach gpt/zdata1
#create a mirror of those two boot efi, called "efi"
#the following will generate /dev/mirror/efi
gmirror label efi gpt/efi0 gpt/efi1
gmirror load
gmirror status
#zroot creation
zpool create -f -o ashift=12 \
 -O compression=lz4 \
 -O acltype=posixacl \
 -O xattr=sa \
 -O atime=off \
 -O relatime=off \
 -O dnodesize=auto \
 -O logbias=throughput \
 -O checksum=fletcher4 \
 -m none -R /mnt zroot  gpt/zdata0.eli gpt/zdata1.eli
# Create initial file systems
zfs create -o mountpoint=none zroot/ROOT
zfs create -o mountpoint=/ zroot/ROOT/freebsd
zfs create -o mountpoint=/home zroot/ROOT/home
zfs create -o mountpoint=/usr zroot/ROOT/usr
zfs create -o mountpoint=/var zroot/ROOT/var
zfs create -o mountpoint=/var/lib/bhyve zroot/ROOT/var/lib/bhyve
zfs create -o mountpoint=/var/db zroot/ROOT/var/db
zfs create -o mountpoint=/var/log zroot/ROOT/var/log
zfs create -o mountpoint=/var/tmp zroot/ROOT/var/tmp
zfs create -o mountpoint=/var/www zroot/ROOT/var/www
zfs create -o mountpoint=/var/cache zroot/ROOT/var/cache
zfs create -o mountpoint=/var/crash zroot/ROOT/var/crash
zfs create -o mountpoint=/var/lib zroot/ROOT/var/lib
zfs create -o mountpoint=/var/lib/docker zroot/ROOT/var/lib/docker
zfs create -o mountpoint=/var/lib/libvirt zroot/ROOT/var/lib/libvirt
zfs create -o mountpoint=/tmp zroot/ROOT/tmp
#
zfs set com.sun:auto-snapshot=false zroot/ROOT/var/cache
zfs set com.sun:auto-snapshot=false zroot/ROOT/var/crash
zfs set com.sun:auto-snapshot=false zroot/ROOT/var/log
zfs set com.sun:auto-snapshot=false zroot/ROOT/var/tmp
#
zfs set sync=standard zroot
zfs set sync=disabled zroot/ROOT/var/cache
zfs set sync=disabled zroot/ROOT/var/crash
zfs set sync=disabled zroot/ROOT/var/log
zfs set sync=disabled zroot/ROOT/var/tmp
#
zfs set recordsize=16k zroot
zfs set recordsize=1M zroot/ROOT/var/lib/docker
zfs set recordsize=1M zroot/ROOT/var/lib/libvirt
zfs set recordsize=1M zroot/ROOT/var/lib/bhyve
#
zpool set bootfs=zroot/ROOT/freebsd zroot
#export
zpool export zroot
#import back into temporary root -> /tmp 
zpool import -R /mnt zroot
#mount the root file system
zfs mount zroot/ROOT/freebsd
#mount all under the root(/tmp) file system
zfs mount -a
#
#install base and kernel
tar xfC /usr/freebsd-dist/base.txz /mnt
tar xfC /usr/freebsd-dist/kernel.txz /mnt
#format the boot partition /dev/mirror/efi
newfs_msdos -A -F 32 -b 4096 -L EFI /dev/mirror/efi
#mount the new efi partition
mount -t msdos /dev/mirror/efi /mnt/boot/efi
mkdir -p /mnt/boot/efi/EFI/BOOT
#copy the efi over the new mounted partition
cp /mnt/boot/loader.efi /mnt/efi/EFI/BOOT/BOOTX64.EFI
umount /mnt/boot/efi
#!!! CHROOT
chroot /mnt
#edit /boot/loader.conf
echo 'aesni_load="YES"' >> /boot/loader.conf
echo 'geom_eli_load="YES"' >> /boot/loader.conf
echo 'geom_mirror_load="YES"' >> /boot/loader.conf
echo 'zfs_load="YES"' >> /boot/loader.conf
#edit /etc/rc.conf
echo 'hostname="something"' >> /etc/rc.conf
echo 'ifconfig_vtnet0="DHCP"' >> /etc/rc.conf
echo 'sendmail_enable="NONE"' >> /etc/rc.conf
echo 'zfs_enable="YES"' >> /etc/rc.conf
echo 'zfsd_enable="YES"' >> /etc/rc.conf
#edit /etc/fstab
echo '/dev/mirror/efi	/boot/efi           msdosfs   rw              0       0' >> /etc/fstab
echo 'fdescfs         /dev/fd             fdescfs   rw              0       0' >> /etc/fstab
echo 'procfs          /proc               procfs    rw              0       0' >> /etc/fstab
#exit CHROOT
exit
#unmount zfs file system
zpool export zroot
#reboot the system
shutdown -r now
