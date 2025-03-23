zpool list
lsblk 
zfs list
sudo dnf update --refresh
sudo -i
exit
btop
sudo -i
uname -a
sudo dnf install kernel-devel
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda
sudo systemctl enable nvidia-hibernate.service nvidia-suspend.service nvidia-resume.service nvidia-powerd.service
lsmod |grep nvidia
nvidia-smi 
sudo cat /sys/module/nvidia_drm/parameters/modeset
sudo dnf remove grub
sudo dnf remove grub2
sudo -i
exit
nvidia-smi 
sudo -i
nvidia-smi 
sudo -i
exit
btop
nvidia-smi 
sudo dnf copr enable lukenukem/asus-linux
sudo dnf update
sudo dnf install asusctl supergfxctl
sudo dnf update --refresh
sudo systemctl enable supergfxd.service
sudo systemctl enable asusctl
sudo systemctl --user enable asusctl
sudo -i
sudo dnf install libreoffice
lsblk 
btop
asusctl 
sudo dnf install asusctl-rog-gui
sudo hostnamectl set-hostname --pretty "Liviu's workstation"
sudo hostnamectl set-hostname --static bobdenaut
sudo vim /etc/hosts
exit
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password
sudo dnf install psd
locate browsers
sudo updatedb
locate browsers
sudo vim /usr/share/psd/browsers/librewolf
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
sudo dnf install librewolf
psd
vim /home/liviu/.config/psd/psd.conf
psd
psd p
sudo vim /etc/sudoers
systemctl --user enable psd
systemctl --user start psd
psd p
df -h
mount
mount|grep 1000
df -h
sudo mkdir -p /usr/local/share/fonts/ubuntufonts
sudo mkdir -p /usr/local/share/fonts/firamono
sudo mkdir -p /usr/local/share/fonts/jetbrainsmono
cd Downloads/Ubuntu/
sudo mv * /usr/local/share/fonts/ubuntufonts
cd ../JetBrainsMono/
ls
sudo mv * /usr/local/share/fonts/jetbrainsmono/
ls
cd ..
cd FiraMono/
sudo mv * /usr/local/share/fonts/firamono/
lsblk 
sudo zpool add zroot cache /dev/nvme1n1p2
sudo zpool status zroot
sudo zpool iostat -v zroot
mount |grep mnt
mount |grep zroot
zfs list
sudo zfs create zroot/home/cache
zfs list
mv /home/liviu/.cache /home/liviu/.cache_backup
rm -rf /home/liviu/.cache
sudo zfs set mountpoint=/home/liviu/.cache zroot/home/cache
mount | grep /home/liviu/.cache
ls -la
mv /home/liviu/.cache_backup/* /home/liviu/.cache/
sudo chown liviu:liviu -R .cache
mv /home/liviu/.cache_backup/* /home/liviu/.cache/
ls -la
rm -rf .cache_backup/
ls -lla
zfs list
zfs list -t snapshot
zfs list -t snapshot | grep zroot/home
zfs list -t snapshot | grep zroot/home/cache
zfs get all zroot/ROOT/fedora@2025-03-09-125025-fedora41-nvidia
zfs list -t snapshot -o name,used
zfs list -t snapshot -o name,used,creation
btop
df -h
history 
sudo chown -R root: /usr/local/share/fonts/ubuntufonts/
sudo chown -R root: /usr/local/share/fonts/jetbrainsmono/
sudo chown -R root: /usr/local/share/fonts/firamono/
sudo chmod 644 /usr/local/share/fonts/ubuntufonts/
sudo chmod 644 /usr/local/share/fonts/jetbrainsmono/
sudo chmod 644 /usr/local/share/fonts/firamono/
sudo restorecon -vFr /usr/local/share/fonts/ubuntufonts/
sudo restorecon -vFr /usr/local/share/fonts/jetbrainsmono/
sudo restorecon -vFr /usr/local/share/fonts/firamono/
sudo fc-cache -v
fc-cache -v
history 
cd /usr/local/share
ls -la
cd fonts/
ls -la
cd ..
ls -la
cd fonts/
ls -la
sudo -i
sudo fc-cache -v
journalctl -b
zpool list
zpool status 
zfs status
zfs list
sudo fc-cache -v
sudo dnf install fontconfig
sudo dnf list fontconfig
sudo dnf info fontconfig
sudo fc-cache -fv
df -h
top -o %MEM
df -h
cd 
cd .config/gtk-3.0/
ls
vim settings.ini
cd ../gtk-4.0/
vim settings.ini
exit
sudo -i
history 
ls -la
btop
cd .config/gtk-3.0/
vim gtk.css
cp gtk.css ../gtk-4.0/
sudo dnf update --refresh
dconf read /org/gnome/Ptyxis/default-profile-uuid
dconf write /org/gnome/Ptyxis/Profiles/456574c5c769f87215c9f12967cdb91c/opacity 0.90
#1741553727
mc
#1741553903
cd
#1741553906
ls -la
#1741553916
vim .bashrc 
#1741554069
source .bashrc 
#1741554071
history 
#1741554119
 ls -la
#1741554121
history 
#1741554145
 cd /
#1741554147
history 
#1741554168
vim .bashrc 
#1741554171
cd
#1741554172
vim .bashrc 
#1741554206
source .bashrc 
#1741554208
vim .bashrc 
#1741554212
ls
#1741554214
 ls
#1741554217
history 
#1741554264
vim .bashrc 
#1741554359
source .bashrc 
#1741554361
ls -la
#1741554367
ls -la
#1741554369
history 
#1741554373
history 
#1741554374
history 
#1741554376
ls -la
#1741554378
ls -la
#1741554379
history 
#1741554385
ls -la
#1741554386
ls -la
#1741554386
ls -la
#1741554388
history 
#1741554401
history 
#1741554402
history 
#1741554411
ls
#1741554412
ls
#1741554413
ls
#1741554414
history 
#1741554433
cat .bashrc 
#1741554471
vim .bashrc 
#1741554503
source .bashrc 
#1741554504
ls
#1741554507
history 
#1741554514
ls
#1741554521
history 
#1741554525
ls
#1741554528
history 
#1741554573
cat .bashrc 
#1741554895
ls -la
#1741554898
cat .bashrc 
#1741554901
history 
#1741554919
ls -la
#1741554926
exit
#1741554208
vim .bashrc 
#1741554214
 ls
#1741554264
vim .bashrc 
#1741554359
source .bashrc 
#1741554361
ls -la
#1741554367
ls -la
#1741554376
ls -la
#1741554378
ls -la
#1741554385
ls -la
#1741554386
ls -la
#1741554386
ls -la
#1741554433
cat .bashrc 
#1741554471
vim .bashrc 
#1741554503
source .bashrc 
#1741554573
cat .bashrc 
#1741554895
ls -la
#1741554898
cat .bashrc 
#1741554919
ls -la
#1741554935
ls
#1741554938
history 
#1741555326
nvidia-smi 
#1741555336
btop
#1741555371
sudo dnf install sensors
#1741555402
sudo systemctl disable cups.socket 
#1741555416
sudo systemctl disable cups
#1741555423
sudo systemctl disable cups.p
#1741555455
sensors
#1741555462
sensors-detect 
#1741555466
sudo sensors-detect 
#1741555694
sudo dnf search lib_sensors
#1741555753
sudo dnf search libsensors
#1741555769
sudo dnf install libsensors
#1741555786
sudo dnf install collectd-sensors
#1741555929
sudo systemctl start collectd.service 
#1741555997
sudo systemctl status collectd.service 
#1741556005
sudo systemctl stop collectd.service 
#1741556013
sudo dnf remove collectd-sensors
#1741556024
sudo dnf autoremove 
#1741556118
sudo dnf install libsensors5
#1741556125
sudo dnf search libsensors5
#1741556144
sudo dnf search sensors5
#1741556148
sudo dnf search sensor
#1741556183
htop
#1741556187
sudo htop
#1741556265
zpool status
#1741556280
zpool trim zroot
#1741556284
sudo zpool trim zroot
#1741556287
sudo zpool trim zdev
#1741556290
zpool list
#1741556318
sudo zpool get all zroot
#1741556372
zfs get all
#1741556896
sudo zfs set atime=off zroot
#1741556904
sudo zfs set atime=off zdev
#1741556913
sudo zfs set sync=always zroot
#1741556915
sudo zfs set sync=always zdev
#1741556926
sudo zfs set relatime=off zroot
#1741556929
sudo zfs set relatime=off zdev
#1741556962
zfs get all zroot
#1741556965
zfs get all zdev
#1741557014
sudo zpool iostat -v zroot -c 1
#1741557033
sudo zpool iostat -v zroot
#1741557093
sudo dnf install iotop
#1741557300
sudo zfs set secondarycache=none zroot
#1741557302
sudo zfs set primarycache=metadata zroot
#1741557528
sudo zfs set primarycache=all zroot
#1741557528
sudo zfs set secondarycache=all zroot
#1741557534
sudo iotop -o
#1741557567
sudo zfs get all zroot|grep primarycache
#1741557573
sudo zfs get all zroot|grep cache
#1741557713
zfs list -o space
#1741557731
zpool get listsnapshots pool
#1741557737
zpool get listsnapshots zroot
#1741558075
man zpool
#1741558139
zpool iostat -vc size
#1741558200
sudo zpool iostat zroot  1
#1741558209
sudo zpool iostat zroot -ny 1
#1741558261
sudo zpool iostat zroot 1
#1741558278
sudo zpool iostat zdev 1
#1741558290
exit
#1741560044
btop
#1741560285
watch -n 0.5 nvidia-smi
#1741560325
watch -nd 0.5 nvidia-smi
#1741560330
watch -d 0.5 nvidia-smi
#1741560340
watch -n 0.5 nvidia-smi -d
#1741560369
nvidia-smi -l 1
#1741560465
pip install --user git+https://github.com/wookayin/gpustat.git@master
#1741560770
gpustat
#1741560793
gpustat -F
#1741560811
gpustat -FP
#1741560837
gpustat -FP -i 1
#1741560881
pip uninstall gpustat
#1741561248
ping google.com
#1741561262
sudo dnf install ufw
#1741561293
sudo systemctl stop firewalld.service 
#1741561299
sudo systemctl disable firewalld.service 
#1741561305
sudo systemctl mask firewalld.service 
#1741561319
sudo -i
#1741554926
exit
#1741557372
sudo dnf update --refresh
#1741558382
sudo arc_summary --section arc | grep current
#1741558508
sudo arc_summary --section arc 
#1741563199
btop
#1741563229
htop
#1741563311
df -h
#1741563229
htop
#1741563311
df -h
#1741563699
history |grep sudo zfs set com.sun:
#1741563704
history |grep "sudo zfs set com.sun:"
#1741563710
history |grep sun
#1741563723
sudo zfs set com.sun:auto-snapshot=false zroot/home/cache
#1741564526
sudo zfs destroy zroot/ROOT/fedora@2025-03-09-125025-fedora41-nvidia
#1741564556
sudo zfs destroy zroot/ROOT/fedora@2025-03-09-121441-fedora41-update
#1741564558
zfs list -t snapshot -o name,used,refer,creation
#1741563710
history |grep sun
#1741563723
sudo zfs set com.sun:auto-snapshot=false zroot/home/cache
#1741564526
sudo zfs destroy zroot/ROOT/fedora@2025-03-09-125025-fedora41-nvidia
#1741564556
sudo zfs destroy zroot/ROOT/fedora@2025-03-09-121441-fedora41-update
#1741564840
sudo zfs snapshot zroot/home@$(date +%F-%T)
#1741564881
sudo zfs destroy zroot/home@2025-03-10-02:00:40
#1741564939
sudo zfs snapshot zroot/home@2025-03-10-020000-1st
#1741564941
zfs list -t snapshot -o name,used,refer,creation
#1741565305
cd /var/crash
#1741565308
cd ..
#1741565314
cd cache/
#1741565315
ls
#1741565325
exit
#1741565315
ls
#1741565325
exit
#1741565432
sudo journalctl --vacuum-size=110m
#1741565438
sudo journalctl --vacuum-size=10m
#1741565442
sudo journalctl --vacuum-size=10
#1741565470
sudo journalctl --vacuum-time=1d
#1741565477
sudo journalctl --vacuum-time=10d
#1741565482
sudo journalctl --vacuum-time=2d
#1741565497
ls -lah /var/log/*.log
#1741565514
ls -la /
#1741565525
ls -la /tmp
#1741565646
watch 'du -s /run/user/1000/psd/liviu'
#1741565654
watch 'du -s /run/user/1000/psd/liviu*'
#1741565976
df -h
#1741566314
lsblk -pf /dev/nvme0n1
#1741566324
lsblk -pf
#1741566380
zfs list -t snapshot -o name,used,refer,creation
#1741566453
history |grep trim
#1741566465
sudo zpool trim zroot
#1741566478
zpool list
#1741566488
zpool status
#1741566800
sudo ufw status verbose
#1741567101
btop
#1741567165
htop
#1741587104
sudo dnf update --refresh
#1741590159
df -k
#1741590162
df -km
#1741590167
df -kh
#1741590170
df -h
#1741590228
nvidia-smi 
#1741566800
sudo ufw status verbose
#1741587104
sudo dnf update --refresh
#1741590509
htop
#1741590728
btop
#1741604692
flatpak remove zoom
#1741590167
df -kh
#1741591910
history |grep set
#1741592132
sudo zfs set autotrim=on zroot
#1741592148
history |grep -i trim
#1741592156
history |grep trim
#1741592163
history |grep -i Trim
#1741592350
zpool get bootfs zroot
#1741592676
history |grep -i zfsbootmenu
#1741592680
sudo -i
#1741594465
zfs list -o name
#1741595545
sudo ufw status verbose
#1741595589
sudo dnf update --refresh
#1741595640
btop
#1741597993
cd .config/gtk-3.0/
#1741597997
cat gtk.css 
#1741598198
cd
#1741598201
df -h
#1741598293
nvidia-smi 
#1741598318
sudo systemctl status nvidia-powerd.service 
#1741598331
sudo systemctl status nvidia-resume.service 
#1741598340
sudo systemctl status nvidia-suspend.service 
#1741598345
sudo systemctl status nvidia-suspend-then-hibernate.service 
#1741598354
sudo systemctl status nvidia-fallback.service 
#1741598372
htop
#1741566800
sudo ufw status verbose
#1741587104
sudo dnf update --refresh
#1741590509
htop
#1741599442
ls -al ~/.config/systemd/user/tracker-*
#1741599449
ls -al ~/.config/systemd/user/
#1741600113
resolvectl 
#1741600164
resolvectl flush-caches 
#1741600168
sudo resolvectl flush-caches 
#1741600560
ptyxis --standalone
#1741600595
resolvectl status
#1741600609
resolvectl status | grep '+DNSOverTLS'
#1741600718
gnome-text-editor ~/'.config/monitors.xml'
#1741600817
sudo sensors-detect --auto
#1741601070
xrandr --output 'HDMI-1' --set 'Broadcast RGB' 'Full'
#1741601210
btop
#1741603052
sudo dnf install zoom
#1741603064
flatpak install zoom
#1741606202
glxinfo | grep OpenGL
#1741606323
ffplay 
#1741606332
ffplay Downloads/Cum\ semnezi\ acceptanta\ dosar\ -Adobe.mp4 
#1741606373
vim .bashrc 
#1741606387
exit
#1741605801
flatpak list
#1741605847
flatpak history 
#1741605860
flatpak update
#1741605872
sudo dnf update --refresh
#1741605889
htop
#1741606415
sudo nano /lib/environment.d/99-environment.conf
#1741606452
ls -la /lib/environment.d/99-environment.conf 
#1741606461
cat /lib/environment.d/99-environment.conf 
#1741606517
htop
#1741592350
zpool get bootfs zroot
#1741592676
history |grep -i zfsbootmenu
#1741592680
sudo -i
#1741594465
zfs list -o name
#1741595545
sudo ufw status verbose
#1741595589
sudo dnf update --refresh
#1741597993
cd .config/gtk-3.0/
#1741597997
cat gtk.css 
#1741598198
cd
#1741598318
sudo systemctl status nvidia-powerd.service 
#1741598331
sudo systemctl status nvidia-resume.service 
#1741598340
sudo systemctl status nvidia-suspend.service 
#1741598345
sudo systemctl status nvidia-suspend-then-hibernate.service 
#1741598354
sudo systemctl status nvidia-fallback.service 
#1741598372
htop
#1741566800
sudo ufw status verbose
#1741587104
sudo dnf update --refresh
#1741590509
htop
#1741599442
ls -al ~/.config/systemd/user/tracker-*
#1741599449
ls -al ~/.config/systemd/user/
#1741600113
resolvectl 
#1741600164
resolvectl flush-caches 
#1741600168
sudo resolvectl flush-caches 
#1741600560
ptyxis --standalone
#1741600595
resolvectl status
#1741600609
resolvectl status | grep '+DNSOverTLS'
#1741600718
gnome-text-editor ~/'.config/monitors.xml'
#1741600817
sudo sensors-detect --auto
#1741601070
xrandr --output 'HDMI-1' --set 'Broadcast RGB' 'Full'
#1741603052
sudo dnf install zoom
#1741603064
flatpak install zoom
#1741606202
glxinfo | grep OpenGL
#1741606323
ffplay 
#1741606332
ffplay Downloads/Cum\ semnezi\ acceptanta\ dosar\ -Adobe.mp4 
#1741606373
vim .bashrc 
#1741605801
flatpak list
#1741605847
flatpak history 
#1741605860
flatpak update
#1741605872
sudo dnf update --refresh
#1741605889
htop
#1741606415
sudo nano /lib/environment.d/99-environment.conf
#1741606452
ls -la /lib/environment.d/99-environment.conf 
#1741606461
cat /lib/environment.d/99-environment.conf 
#1741606542
df -h
#1741606591
psd p
#1741606614
watch 'df -h'
#1741607306
history 
#1741607920
sudo nvme list
#1741608016
sudo smartctl -a /dev/nvme0n1
#1741608059
sudo smartctl -a /dev/nvme1n1
#1741608190
sudo hdparm -tT /dev/nvme0n1
#1741608207
sudo hdparm -tT /dev/nvme1n1
#1741608248
sudo fwupdmgr refresh
#1741609454
zfs list 
#1741609477
sudo zpool iostat -v zroot -c 1
#1741609489
sudo zpool iostat -v zroot 
#1741611074
history |grep iostat
#1741611084
sudo zpool iostat -v zroot -ny 1
#1741611151
iostat 
#1741611155
iostat -c 1
#1741611165
iostat --help
#1741611177
sudo dnf install tldr
#1741611195
tlds iostat
#1741611211
iostat -m
#1741611223
iostat -N
#1741611227
iostat -mN
#1741611387
iostat -xN nvme1n1p2
#1741611395
iostat -xN nvme0n1
#1741611402
lsblk 
#1741611422
tldr iostat
#1741611427
iostat 2
#1741611454
iostat -m 1
#1741611567
zpool status
#1741611723
zpool list
#1741611825
zpool get all zroot
#1741612158
sudo iotop -o
#1741612191
du -sh /var/log/*
#1741612239
sudo systemctl status ssd
#1741612260
sudo systemctl status sssd-autofs.service 
#1741612337
sudo systemctl status sssd
#1741612358
sudo rm -rf /var/log/sssd/*
#1741612383
sudo dnf search sssd
#1741612396
sudo dnf list sssd
#1741612405
sudo dnf remove sssd
#1741612413
sudo dnf remove sssd.x86_64 2.10.2-1.fc41
#1741612463
sudo systemctl stop sssd
#1741612463
sudo systemctl disable sssd
#1741612464
sudo systemctl mask sssd
#1741612472
systemctl list-units --type=service --state=running
#1741612518
sudo systemctl stop sssd-kcm.service
#1741612518
sudo systemctl disable sssd-kcm.service
#1741612519
sudo systemctl mask sssd-kcm.service
#1741612523
sudo dnf remove sssd-kcm
#1741612576
sudo tuned-adm profile virtual-guest
#1741612610
sudo journalctl --vacuum-time=1d
#1741612660
sudo vim /etc/systemd/journald.conf
#1741612672
sudo journalctl --vacuum-size=1M
#1741612676
sudo journalctl --vacuum-size=1k
#1741612681
sudo journalctl --vacuum-size=0.5M
#1741612696
sudo lsof +Dm /var/log
#1741612700
sudo lsof +Dh /var/log
#1741612710
sudo lsof +D +m /var/log
#1741612716
sudo lsof +m /var/log
#1741612793
sudo systemctl stop abrt-ccpp.service
#1741612801
sudo systemctl stop abrt-journal-core.service 
#1741612807
sudo systemctl disable abrt-journal-core.service 
#1741612820
sudo rm -rf /var/log/journal/*
#1741612847
sudo systemctl stop auditd
#1741612884
sudo nano /etc/audit/auditd.conf
#1741612927
sudo systemctl restart auditd
#1741612947
sudo systemctl status auditd.service 
#1741612957
sudo systemctl restart auditd.service 
#1741612962
sudo lsof +D /var/log
#1741612983
iostat -xN nvme1n1
#1741613003
iostat 1
#1741613035
iostat -xN 
#1741614561
nvidia-smi 
#1741614596
btop
#1741615172
cat /etc/modprobe.d/nvidia.conf 
#1741615187
ll /etc/nvidia/
#1741615610
vim /etc/modprobe.d/nvidia.conf 
#1741615646
sudo modprobe -r nvidia
#1741615646
sudo modprobe nvidia
#1741615663
sudo vim /etc/modprobe.d/nvidia.conf 
#1741615673
cat /proc/driver/nvidia/params | sort
#1741615696
exit
#1741612957
sudo systemctl restart auditd.service 
#1741612962
sudo lsof +D /var/log
#1741612983
iostat -xN nvme1n1
#1741613003
iostat 1
#1741613035
iostat -xN 
#1741615187
ll /etc/nvidia/
#1741615610
vim /etc/modprobe.d/nvidia.conf 
#1741615646
sudo modprobe -r nvidia
#1741615663
sudo vim /etc/modprobe.d/nvidia.conf 
#1741615809
cat /proc/driver/nvidia/params | sort
#1741615825
sudo modprobe nvidia
#1741615872
nvidia-smi 
#1741615910
sudo ufw logging off
#1741615914
sudo dmesg
#1741615929
sudo dmesg|grep -i preserve
#1741615934
sudo dmesg|grep -i dword
#1741615937
sudo dmesg|grep -i nvidia
#1741615944
cat /etc/modprobe.d/nvidia.conf 
#1741615949
sudo dmesg|grep -i nvreg
#1741615951
sudo dmesg|grep -i nv
#1741615974
btop
#1741616427
zpool set ashift=12 zdev
#1741616431
sudo zpool set ashift=12 zdev
#1741616470
zfs status
#1741616474
zfs list
#1741616509
zpool get ashift
#1741616523
zpool status
#1741616717
env|grep path
#1741616821
vim ~/.bashrc 
#1741616904
source ~/.bashrc 
#1741616906
env|grep -i path
#1741616913
exit
#1741616906
env|grep -i path
#1741616913
exit
#1741618650
zfs status
#1741618660
iostat 1
#1741618678
cd
#1741618680
ls -la
#1741618808
ls -lah
#1741618899
rm testfile 
#1741619019
ls -la
#1741619022
ls -lah
#1741619124
rm testfile 
#1741622664
nvtop 
#1741622757
iostat 1
#1741615646
sudo modprobe -r nvidia
#1741615663
sudo vim /etc/modprobe.d/nvidia.conf 
#1741615809
cat /proc/driver/nvidia/params | sort
#1741615825
sudo modprobe nvidia
#1741615872
nvidia-smi 
#1741615910
sudo ufw logging off
#1741615914
sudo dmesg
#1741615929
sudo dmesg|grep -i preserve
#1741615934
sudo dmesg|grep -i dword
#1741615937
sudo dmesg|grep -i nvidia
#1741615944
cat /etc/modprobe.d/nvidia.conf 
#1741615949
sudo dmesg|grep -i nvreg
#1741615951
sudo dmesg|grep -i nv
#1741616427
zpool set ashift=12 zdev
#1741616431
sudo zpool set ashift=12 zdev
#1741616470
zfs status
#1741616717
env|grep path
#1741616821
vim ~/.bashrc 
#1741616904
source ~/.bashrc 
#1741616906
env|grep -i path
#1741616913
exit
#1741617485
zfs status zroot
#1741617494
zfs list zroot
#1741617788
fdisk -l
#1741617794
man fdisk
#1741617805
sudo fdisk -l
#1741617986
zpool set ashift=9 zdev
#1741617999
zpool get ashift
#1741618012
sudo zpool set ashift=9 zdev
#1741618025
sudo zpool set ashift=9 zroot
#1741618028
sudo zpool get ashift
#1741618111
zpool iostat -v
#1741618124
sudo zpool scrub zdev
#1741618137
sudo zpool scrub zroot
#1741618530
iostat -xm 1
#1741618547
iostat -x
#1741618551
iostat -x 1
#1741618633
dd if=/dev/zero of=~/testfile bs=4k count=1000000 oflag=direct
#1741618804
dd if=/dev/zero of=~/testfile bs=64k count=100000
#1741619014
dd if=/dev/zero of=~/testfile bs=128k count=100000
#1741619137
zpool status 
#1741619146
zpool status -v
#1741619156
zfs get recordsize
#1741619192
zfs list
#1741619197
zpool list
#1741619201
zpool status
#1741621297
sudo dnf install iftop
#1741621400
sudo dnf install nvtop
#1741621410
nvtop
#1741621617
sudo dnf install wavemon
#1741621626
wavemon 
#1741621637
iftop
#1741621641
sudo iftop
#1741621921
sudo dnf install fastfetch
#1741621935
fastfetch 
#1741621997
btop
#1741621997
btop
#1741675981
sudo dnf update --refresh
#1741676097
zfs-update 
#1741676118
sudo kernel-update 
#1741676190
sudo zfs-update 
#1741676433
zfs --version
#1741676447
zfs list
#1741676451
zfs status
#1741676455
zpool status
#1741676465
zpool list
#1741676805
sudo iftop 
#1741677244
ip a
#1741677253
sudo iftop enp108s0
#1741677263
sudo iftop -i enp108s0
#1741676757
htop
#1741676465
zpool list
#1741676580
sudo dnf update --refresh
#1741676604
sudo kernel-update 
#1741677179
uname -a
#1741677205
ls -la /boot/efi/EFI/ZBM/
#1741677212
ls -la /boot/
#1741677215
ls -la /boot/efi/
#1741677220
ls -la /boot/grub2/
#1741677224
sudo ls -la /boot/grub2/
#1741677224
sudo ls -la /boot/grub2/
#1741680439
sudo journalctl --vacuum-size=1M
#1741680448
sudo lsof +D /var/log
#1741621637
iftop
#1741621641
sudo iftop
#1741621921
sudo dnf install fastfetch
#1741621935
fastfetch 
#1741676097
zfs-update 
#1741676451
zfs status
#1741676805
sudo iftop 
#1741677244
ip a
#1741677253
sudo iftop enp108s0
#1741677263
sudo iftop -i enp108s0
#1741676757
htop
#1741677205
ls -la /boot/efi/EFI/ZBM/
#1741677212
ls -la /boot/
#1741677215
ls -la /boot/efi/
#1741677220
ls -la /boot/grub2/
#1741677224
sudo ls -la /boot/grub2/
#1741677406
sudo dnf update --refresh
#1741677431
sudo zfs-update 
#1741677441
sudo kernel-update 
#1741677505
sudo dmesg
#1741677552
zfs --version
#1741677559
zpool --version
#1741677574
zfs list
#1741677582
lsmod |grep -i zfs
#1741677586
lsmod |grep -i nvidia
#1741677612
sudo dmesg|grep -i zfs
#1741677617
sudo dmesg|grep -i nvidia
#1741677927
ls
#1741677934
mkdir git
#1741677936
cd git
#1741677943
git clone https://github.com/gregory-lee-bartholomew/fedora-on-zfs.git
#1741678192
uname -a
#1741678517
zpool get capacity,size,health,fragmentation|column 
#1741678542
zpool get capacity,size,health,fragmentation
#1741678639
zpool list
#1741678648
zpool status
#1741678784
zfs history
#1741678794
zfs history zdev
#1741679174
zfs list filesystem
#1741679179
zfs list 
#1741679865
df -h
#1741679916
watch 'du -s /run/user/1000/psd/liviu-*'
#1741680383
history 
#1741680465
btop
#1741680527
sudo -i
#1741680564
exit
#1741683193
ptyxis --standalone
#1741683205
ptyxis 
#1741679174
zfs list filesystem
#1741679179
zfs list 
#1741680383
history 
#1741680527
sudo -i
#1741680711
cat /proc/cmdline
#1741680739
lspci -k
#1741681147
btop
#1741683225
df -h
#1741683267
vim /home/liviu/.config/psd/.psd.conf
#1741683333
cat /home/liviu/.config/psd/.psd.conf
#1741683335
psd p
#1741683356
watch 'du -s /run/user/1000/psd/liviu-*'
#1741683360
exit
#1741679174
zfs list filesystem
#1741679179
zfs list 
#1741679865
df -h
#1741679916
watch 'du -s /run/user/1000/psd/liviu-*'
#1741680383
history 
#1741680574
sudo dnf update
#1741680600
sudo dnf upgrade
#1741680606
sudo -i
#1741683389
sudo dnf autoremove 
#1741683402
sudo dnf clean 
#1741683407
sudo dnf clean all
#1741683418
sudo dnf update --refresh
#1741683470
sudo flatpak update && flatpak update
#1741683474
sync
#1741683510
ls .cache/mesa_shader_cache
#1741683514
ls -la .cache/mesa_shader_cache
#1741683530
tracker3 reset --filesystem --rss 
#1741683550
ps axf|grep -i tracker
#1741683698
systemctl --user mask tracker-writeback-3.service 
#1741683705
systemctl --user mask tracker-xdg-portal-3.service 
#1741683710
systemctl --user disable tracker-xdg-portal-3.service 
#1741683718
systemctl --user disable tracker-writeback-3.service 
#1741683725
systemctl --user stop tracker-writeback-3.service 
#1741683737
systemctl --user stop tracker-xdg-portal-3.service 
#1741683742
systemctl --user status tracker-xdg-portal-3.service 
#1741683751
systemctl --user 
#1741683757
systemctl --user |grep tracker
#1741683784
systemctl --user disable tracker-miner-fs-3.service 
#1741683787
systemctl --user |grep -i tracker
#1741683800
systemctl --user --help
#1741683811
systemctl --user list-units
#1741683820
systemctl --user list-units |grep -i tracker
#1741683833
systemctl --user mask tracker-miner-fs-3.service 
#1741683838
btop
#1741684384
systemctl --user status tracker-miner-fs-3.service 
#1741684397
systemctl --user restart tracker-miner-fs-3.service 
#1741684405
systemctl --user stop tracker-miner-fs-3.service 
#1741684408
exit
#1741678076
htop
#1741683800
systemctl --user --help
#1741683811
systemctl --user list-units
#1741683820
systemctl --user list-units |grep -i tracker
#1741683833
systemctl --user mask tracker-miner-fs-3.service 
#1741683838
btop
#1741684384
systemctl --user status tracker-miner-fs-3.service 
#1741684397
systemctl --user restart tracker-miner-fs-3.service 
#1741684405
systemctl --user stop tracker-miner-fs-3.service 
#1741684408
exit
#1741678076
htop
#1741684531
sudo iftop 
#1741685822
sudo dnf -y install podman
#1741685840
sudo dnf -y install podman-desktop
#1741685850
flatpak  install podman-desktop
#1741686364
podman ps
#1741686510
dnf search jboss
#1741686663
dnf search openjdks
#1741686670
dnf search openjdk
#1741686743
dnf search wildfly
#1741686757
sudo dnf install wildfly
#1741687067
sudo dnf install maven
#1741687094
java --version
#1741687171
mkdir -p ~/.m2
#1741687190
vim settings.xml
#1741687202
cd /mnt/dev
#1741687244
mvn clean 
#1741687257
ls -la
#1741687260
cd .m2/
#1741687263
cd org/
#1741687265
ls
#1741687266
cd ..
#1741687269
rm -rf org/
#1741687284
vim ~/.m2/settings.xml
#1741687298
mvn dependency:resolve
#1741687337
mvn clean install -X
#1741687351
mvn dependency:resolve -X
#1741687373
mvn dependency:resolve 
#1741687398
mvn dependency:purge-local-repository
#1741687421
ls -la repository/
#1741687429
ls -laR repository/
#1741687439
du -h repository/
#1741687445
df -h repository/
#1741687453
zpool list
#1741687693
cat /usr/lib/environment.d/99-environment.conf
#1741687733
sudo vim /usr/lib/environment.d/99-environment.conf
#1741687771
source /etc/environment
#1741687776
source /usr/lib/environment.d/99-environment.conf
#1741687778
journalctl --since=today -p 3
#1741684511
btop
#1741684408
exit
#1741678076
htop
#1741685306
sudo dnf update --refresh
#1741685327
ls /var/cache/dnf/
#1741685329
ls /var/cache/dnf/expired_repos.json 
#1741685334
cat /var/cache/dnf/expired_repos.json 
#1741685457
sudo vim /etc/dnf/dnf.conf 
#1741685475
sudo dnf autoremove 
#1741685522
sudo dnf update
#1741685529
sudo zfs-update 
#1741685539
sudo kernel-update 
#1741685543
btop
#1741687771
source /etc/environment
#1741687776
source /usr/lib/environment.d/99-environment.conf
#1741684511
btop
#1741684408
exit
#1741678076
htop
#1741685306
sudo dnf update --refresh
#1741685327
ls /var/cache/dnf/
#1741685329
ls /var/cache/dnf/expired_repos.json 
#1741685334
cat /var/cache/dnf/expired_repos.json 
#1741685457
sudo vim /etc/dnf/dnf.conf 
#1741685475
sudo dnf autoremove 
#1741685522
sudo dnf update
#1741685529
sudo zfs-update 
#1741685539
sudo kernel-update 
#1741685543
btop
#1741687985
systemctl --user enable gnome-keyring-daemon
#1741687992
systemctl --user start gnome-keyring-daemon
#1741688019
cat ~/.config/user-dirs.dirs
#1741688059
xdg-user-dirs-update
#1741688136
sudo modprobe i2c_hid_acpi
#1741688159
cat /etc/udev/rules.d/99-i2c-hid.rules
#1741688171
cd /etc/udev/rules.d/
#1741688172
ls
#1741688210
i2cdetect -l
#1741688379
kill 6665
#1741688412
systemctl --user restart gnome-keyring-daemon
#1741688422
systemctl --user disable gnome-keyring-daemon
#1741688429
systemctl --user stop gnome-keyring-daemon
#1741688443
/usr/bin/gnome-keyring-daemon --daemonize --login
#1741688449
systemctl --user status gnome-keyring-daemon
#1741688456
ps aux | grep keyring
#1741688463
journalctl --since=today -p 3
#1741687888
htop
#1741687888
htop
#1741692005
sudo dnf install libreoffice
#1741692017
sudo dnf install libreoffice-themes
#1741692020
sudo dnf install libreoffice-theme
#1741692038
sudo dnf update --refresh
#1741692049
btop
#1741692784
gsettings get org.gnome.desktop.interface gtk-theme
#1741693025
sudo dnf install yaru-stuff
#1741693046
sudo dnf install yaru-*
#1741693074
sudo dnf install yaru-gtk4-theme
#1741693345
btop
#1741693568
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
#1741693587
dnf install adw-gtk3-theme
#1741693591
sudo dnf install adw-gtk3-theme
#1741688571
journalctl --since=today -p 3
#1741688592
ps aux | grep keyring
#1741688600
htop
#1741709448
btop
#1741688456
ps aux | grep keyring
#1741688463
journalctl --since=today -p 3
#1741687888
htop
#1741687888
htop
#1741692005
sudo dnf install libreoffice
#1741692017
sudo dnf install libreoffice-themes
#1741692020
sudo dnf install libreoffice-theme
#1741692784
gsettings get org.gnome.desktop.interface gtk-theme
#1741693025
sudo dnf install yaru-stuff
#1741693046
sudo dnf install yaru-*
#1741693074
sudo dnf install yaru-gtk4-theme
#1741693568
gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' && gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
#1741693587
dnf install adw-gtk3-theme
#1741693591
sudo dnf install adw-gtk3-theme
#1741688571
journalctl --since=today -p 3
#1741688592
ps aux | grep keyring
#1741688600
htop
#1741694493
zpool list
#1741694499
zpool status 
#1741700608
ls /boot/efi/EFI/fedora/
#1741700613
ls -lah /boot/efi/EFI/fedora/
#1741700623
ls -lah /boot/loader/entries/
#1741700628
sudo ls -lah /boot/loader/entries/
#1741700658
sudo vim /boot/loader/entries/b00eb08297be412c878420babb09aaea-0-rescue.conf
#1741700693
sudo vim /boot/loader/entries/b00eb08297be412c878420babb09aaea-6.13.5-200.fc41.x86_64.conf
#1741700715
ls -la /boot/
#1741700751
man ls
#1741700816
ls -lat /boot/efi/EFI/ZBM/
#1741700942
ls -lat /boot/efi/
#1741700946
ls -lat /boot/efi/EFI/
#1741700949
ls -lat /boot/efi/EFI/BOOT/
#1741700952
ls -lat /boot/efi/EFI/fedora/
#1741700962
ls -lat /boot/grub2/
#1741700965
sudo ls -lat /boot/grub2/
#1741700976
sudo ls -lat /boot/
#1741700982
ls -lat /boot/
#1741700988
sudo ls -lat /boot/loader/
#1741700992
sudo ls -lat /boot/loader/entries/
#1741701015
sudo cat /boot/loader/entries/b00eb08297be412c878420babb09aaea-0-rescue.conf
#1741701086
kernel-install 
#1741701116
kernel-install --help
#1741701136
instkernel
#1741701145
installkernel
#1741701688
sudo -i
#1741702675
fastfetch 
#1741702755
sudo dnf history 
#1741702770
dnf history install
#1741702794
man dnf
#1741702829
dnf info
#1741702836
dnf history 
#1741702843
dnf history fastfetch
#1741702858
dnf history --help
#1741702864
dnf history info
#1741702878
dnf history list
#1741704651
top
#1741707256
pciconf
#1741707978
nvidia-smi 
#1741708391
btop
#1741709281
sudo dnf update
#1741709292
sudo dnf update --refresh
#1741709304
flatpak update
#1741709589
sudo zfs-update 
#1741709596
sudo kernel-update 
#1741711194
arcstat -f time,hit%,arcsz,mfu,evict
#1741711212
arcstat -f time,hit%,arcsz,mfu
#1741711221
arcstat -f time,hit%,dh%,ph%,mh% 1
#1741711557
cat /etc/modprobe.d/zfs.conf
#1741711587
zfs get all <pool_name>
#1741711592
zfs get all zroot
#1741711602
zfs get all zroot|grep arc
#1741711605
zfs get all zroot|grep -i arc
#1741711658
cat /proc/spl/kstat/zfs/arcstats
#1741711949
sudo vim /etc/modprobe.d/zfs.conf
#1741711971
sudo modprobe -r zfs
#1741712244
vim .bashrc 
#1741712303
exit
#1741711280
arcstat -f time,hit%,arcsz,mfu,evict
#1741711315
arcstat -f time,hit%,arcsz,mfu,dh%,ph%,mh% 1
#1741709292
sudo dnf update --refresh
#1741709304
flatpak update
#1741709589
sudo zfs-update 
#1741709596
sudo kernel-update 
#1741711036
sudo dnf search zfs-zed
#1741711116
sudo dnf search zed
#1741711121
arcstat
#1741711128
sudo dnf install zfs-zed
#1741711167
zpool iostat -v 1
#1741712472
htop
#1741711167
zpool iostat -v 1
#1741712677
zpool status
#1741712743
zpool-iostat 
#1741712433
arcs
#1741711036
sudo dnf search zfs-zed
#1741711116
sudo dnf search zed
#1741711121
arcstat
#1741711128
sudo dnf install zfs-zed
#1741711167
zpool iostat -v 1
#1741713005
zfs get all zroot | grep cache
#1741713020
sysctl -a | grep zfs
#1741713025
sudo sysctl -a | grep zfs
#1741713037
arcstat -f time,hit%,arcsz,mfu,dh%,ph%,mh% 1
#1741713049
zpool status
#1741713142
zfs get secondarycache zroot
#1741713147
zfs get secondarycache 
#1741713176
zfs get all zroot | grep l2arc
#1741713179
zfs get all zroot | grep -i l2arc
#1741713256
vim sudo /etc/modprobe.d/zfs.conf
#1741713262
vim sudo /etc/modprobe.d/zfs.conf 
#1741713275
sudo vim /etc/modprobe.d/zfs.conf 
#1741713312
cat /proc/sys/vfs/zfs/arc_max
#1741713432
arc_summary
#1741713652
cat /sys/module/zfs/parameters/zfs_arc_min
#1741713653
cat /sys/module/zfs/parameters/zfs_arc_max
#1741713691
sysctl -w vfs.zfs.arc_max=12G
#1741713769
arc_summary -d | more
#1741713785
arc_summary -d
#1741713801
arc_summary 
#1741713919
sudo vim /etc/modprobe.d/zfs.conf
#1741714488
sysctl -w vfs.zfs.arc_max=12G
#1741714776
arcs
#1741714811
htop
#1741713785
arc_summary -d
#1741713919
sudo vim /etc/modprobe.d/zfs.conf
#1741714888
arc_summary 
#1741715004
cat /sys/module/zfs/parameters/zfs_arc_
#1741715007
cat /proc/spl/kstat/zfs/arcstats 
#1741715090
cat /proc/sys/vm/drop_caches
#1741715094
sudo cat /proc/sys/vm/drop_caches
#1741715105
sudo vim /proc/sys/vm/drop_caches
#1741715148
sudo cat /etc/modprobe.d/zfs.conf
#1741715196
echo 12884901888 > /sys/module/zfs/parameters/zfs_arc_max
#1741715199
sudo echo 12884901888 > /sys/module/zfs/parameters/zfs_arc_max
#1741715218
sudo vim /sys/module/zfs/parameters/zfs_arc_max
#1741715231
cat /sys/module/zfs/parameters/zfs_arc_max 
#1741715267
cat /sys/module/zfs/parameters/zfs_arc_min_prefetch_ms 
#1741715333
vim /etc/modprobe.d/zfs.conf
#1741715412
zpool setbootfs
#1741715415
sudo zpool setbootfs
#1741715464
compgen -c | grep dracut
#1741715472
which dracut
#1741715476
sudo find / -type f -iname "*dracut*"
#1741715488
cat /etc/dracut.conf
#1741715531
cat /proc/spl/kstat/zfs/arcstats |grep c_
#1741715584
cat /sys/module/zfs/parameters/zfs_arc_min
#1741715584
cat /sys/module/zfs/parameters/zfs_arc_max
#1741714846
arcs
#1741718462
history 
#1741718472
sudo cat /etc/modprobe.d/zfs.conf
#1741722767
lsinitrd -f /etc/ld.so.conf
#1741722772
sudo lsinitrd -f /etc/ld.so.conf
#1741722790
sudo lsinitrd -f /etc/modprobe.d/
#1741722790
sudo lsinitrd -f /etc/modprobe.d/
#1741723582
lsinitrd | grep -i zfs_param
#1741723586
dracut --print-cmdline
#1741723599
sudo lsinitrd | grep -i zfs_param
#1741723607
sudo dracut --print-cmdline
#1741723613
sudo lsinitrd | grep -i zfs_arc
#1741723624
sudo lsinitrd | grep -i nvidia_param
#1741714846
arcs
#1741715765
cat /sys/module/zfs/parameters/zfs_arc_max
#1741715769
cat /sys/module/zfs/parameters/zfs_arc_min
#1741715773
cat /proc/spl/kstat/zfs/arcstats |grep c_
#1741715788
vim /etc/modprobe.d/zfs.conf
#1741715876
cd Documents/
#1741715877
ls
#1741715883
ls -la
#1741715889
sudo -i
#1741716440
efibootmgr -v
#1741716601
ls /boot/efi/EFI/ZBM/
#1741716843
moount|grep efivars
#1741716849
mount|grep efivars
#1741716867
zpool get bootfs
#1741716879
zpool get bootfs zroot
#1741717088
cat zfs-fedora41.sh 
#1741717093
sudo cat zfs-fedora41.sh 
#1741717341
htop
#1741713919
sudo vim /etc/modprobe.d/zfs.conf
#1741714888
arc_summary 
#1741715004
cat /sys/module/zfs/parameters/zfs_arc_
#1741715007
cat /proc/spl/kstat/zfs/arcstats 
#1741715090
cat /proc/sys/vm/drop_caches
#1741715094
sudo cat /proc/sys/vm/drop_caches
#1741715105
sudo vim /proc/sys/vm/drop_caches
#1741715148
sudo cat /etc/modprobe.d/zfs.conf
#1741715196
echo 12884901888 > /sys/module/zfs/parameters/zfs_arc_max
#1741715199
sudo echo 12884901888 > /sys/module/zfs/parameters/zfs_arc_max
#1741715218
sudo vim /sys/module/zfs/parameters/zfs_arc_max
#1741715231
cat /sys/module/zfs/parameters/zfs_arc_max 
#1741715267
cat /sys/module/zfs/parameters/zfs_arc_min_prefetch_ms 
#1741715333
vim /etc/modprobe.d/zfs.conf
#1741715412
zpool setbootfs
#1741715415
sudo zpool setbootfs
#1741715464
compgen -c | grep dracut
#1741715472
which dracut
#1741715476
sudo find / -type f -iname "*dracut*"
#1741715488
cat /etc/dracut.conf
#1741715531
cat /proc/spl/kstat/zfs/arcstats |grep c_
#1741715584
cat /sys/module/zfs/parameters/zfs_arc_min
#1741715584
cat /sys/module/zfs/parameters/zfs_arc_max
#1741714846
arcs
#1741718462
history 
#1741718472
sudo cat /etc/modprobe.d/zfs.conf
#1741719048
lsinitrd | grep zfs.conf
#1741719143
cat /usr/lib/modules-load.d/zfs.conf
#1741719376
vim /etc/modprobe.d/zfs.conf 
#1741719381
vim /usr/lib/modules-load.d/zfs.conf
#1741719446
ls -la /etc/modprobe.d/zfs.conf
#1741719452
cat /etc/modprobe.d/zfs.conf
#1741719936
arc_summary | grep -E 'ARC size \(current\)|Min size \(hard limit\)|Max size \(high water\)|Anonymous metadata size'
#1741719980
ls -la  /etc/modprobe.d/zfs.conf
#1741720004
ls /etc/dracut.conf.d/
#1741720011
cat /etc/dracut.conf.d/zol.conf 
#1741720038
man dracut.conf.d
#1741720041
man dracut.conf
#1741720091
cd /etc/dracut.conf.d/
#1741720219
sudo vim /usr/lib/modules-load.d/zfs.conf
#1741720279
cat /etc/modprobe.d/nvidia.conf 
#1741720715
sudo lsinitrd | grep zfs.conf
#1741720721
sudo lsinitrd 
#1741720855
sudo lsinitrd | grep -i zfs.conf
#1741720959
cat /etc/modprobe.d/zfs.conf 
#1741720974
sudo lsinitrd | grep -i tuned.conf
#1741721001
sudo lsinitrd | grep -i zol.conf
#1741721008
sudo lsinitrd | grep -i zol
#1741721065
cat zol.conf 
#1741721298
cd /etc/modprobe.d/
#1741721300
ls -lat
#1741721319
ls -laT
#1741721336
man ls
#1741721386
cat zfs.conf 
#1741721422
sudo mv zfs.conf zfs_arc.conf
#1741721474
cat nvidia.conf 
#1741721490
sudo mv nvidia.conf nvidia_params.conf
#1741721531
pwd
#1741721625
sudo lsinitrd | grep -i nvidia_params
#1741721679
calc
#1741721862
sudo vim zfs_arc.conf 
#1741721876
cd -
#1741721889
sudo touch nvidia_parameters.conf
#1741721903
sudo touch zfs_arc_parameters.conf
#1741721998
cat /etc/modprobe.d/nvidia_params.conf 
#1741722006
sudo vim nvidia_parameters.conf 
#1741722025
cat /etc/modprobe.d/zfs_arc.conf 
#1741722047
sudo vim zfs_arc_parameters.conf 
#1741722070
cat nvidia_parameters.conf
#1741722075
cat zfs_arc_parameters.conf 
#1741722083
ls /etc/modprobe.d/nvidia_params.conf /etc/modprobe.d/zfs_arc.conf 
#1741722119
rm nvidia_parameters.conf zfs_arc_parameters.conf 
#1741722128
sudo rm nvidia_parameters.conf zfs_arc_parameters.conf 
#1741722130
ls
#1741722157
sudo vim modprobe_files.conf
#1741722170
ls -la
#1741722175
cat modprobe_files.conf 
#1741722186
ls -la /etc/modprobe.d/nvidia_params.conf /etc/modprobe.d/zfs_arc.conf 
#1741722347
ls -la /etc/modprobe.d/
#1741723403
sudo dracut -f
#1741723442
sudo lsinitrd | grep -i nvidia.conf
#1741723444
sudo lsinitrd | grep -i nvidia
#1741723508
sudo lsinitrd | grep -i nvidia_param
#1741723522
sudo lsinitrd | grep -i zfs_arc
#1741723528
sudo lsinitrd | grep -i zfs
#1741723773
man dracut
#1741715472
which dracut
#1741715476
sudo find / -type f -iname "*dracut*"
#1741715488
cat /etc/dracut.conf
#1741715531
cat /proc/spl/kstat/zfs/arcstats |grep c_
#1741715584
cat /sys/module/zfs/parameters/zfs_arc_min
#1741715584
cat /sys/module/zfs/parameters/zfs_arc_max
#1741714846
arcs
#1741717621
sudo traceroute google.com
#1741717691
sudo ufw app allow 'traceroute'
#1741717726
sudo ufw disable
#1741717731
traceroute google.com
#1741717824
sudo ufw enable
#1741717827
sudo iftop 
#1741717879
sudo dnf install nload
#1741717889
nload 
#1741717960
iftop
#1741717969
sudo ntop
#1741718067
ip link show
#1741718145
sudo sysctl -w net.ipv4.tcp_congestion_control=bbr
#1741718179
sudo nano /etc/sysctl.conf
#1741718202
sudo sysctl -p
#1741718209
lsmod | grep bbr
#1741718311
sysctl net.ipv4.tcp_congestion_control
#1741718336
sudo nload
#1741717461
zpool-iostat 
#1741717441
cat .bashrc 
#1741717444
arcs
#1741717461
zpool-iostat 
#1741724087
acrs
#1741725600
cat .bashrc 
#1741726427
arcs
#1741724069
zpool-iostat 
#1741717441
cat .bashrc 
#1741717444
arcs
#1741724296
cat /proc/spl/kstat/zfs/arcstats
#1741724423
zpool list
#1741724580
cat /proc/spl/kstat/zfs/l2arcsta
#1741724618
zpool status
#1741724757
cat /etc/modprobe.d/zfs_arc.conf 
#1741724826
sudo vim /etc/modprobe.d/zfs_arc.conf 
#1741725062
sysctl -w zfs.l2arc_max_size=472446402
#1741725104
sudo zfs set l2arc_max_size=450M zroot
#1741725179
sudo zfs get secundarycache
#1741725188
sudo zfs get secondarycache
#1741725195
sudo zfs get primarycache
#1741725204
sudo zfs get primarycache zroot
#1741725246
sudo zfs get secondarycache zroot
#1741726296
vim .bashrc 
#1741726570
history | grep
#1741726581
alias hg="history | grep"
#1741726585
hg cucu
#1741726591
hg ls
#1741726630
curl wttr.in
#1741726721
lscpu
#1741726766
curl -s wttr.in/Bucharest
#1741726766
curl -s wttr.in/Bucharest
#1741727566
zpool-iostat 
#1741727588
arcs
#1741727648
btop
#1741724015
history 
#1741724025
cat /sys/module/zfs/parameters/zfs_arc_min
#1741724031
cat /sys/module/zfs/parameters/zfs_arc_max
#1741724039
htop
#1741726766
curl -s wttr.in/Bucharest
#1741727030
btop
#1741727403
lscpu | grep Virtualization
#1741727414
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-viewer     edk2-ovmf swtpm qemu-img guestfs-tools libosinfo tuned
#1741727437
sudo dnf update --refresh
#1741727448
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-viewer     edk2-ovmf swtpm qemu-img guestfs-tools libosinfo tuned
#1741727700
sudo wget https://fedorapeople.org/groups/virt/virtio-win/virtio-win.repo     -O /etc/yum.repos.d/virtio-win.repo
#1741727711
sudo dnf install virtio-win
#1741727816
for drv in qemu interface network nodedev nwfilter secret storage; do     sudo systemctl enable virt${drv}d.service;     sudo systemctl enable virt${drv}d{,-ro,-admin}.socket;   done
#1741727849
acrs
#1741727852
arcs
#1741727865
zpool-iostat 
#1741727929
sudo iftop 
#1741727937
history |grep top
#1741727952
iftop
#1741727955
sudo iftop
#1741727988
ntop
#1741727993
sudo ntop
#1741728002
history 
#1741728008
nload
#1741727993
sudo ntop
#1741728002
history 
#1741728008
nload
#1741728170
sudo virt-host-validate qemu
#1741728189
sudo systemctl enable --now tuned
#1741728219
sudo systemctl status --now tuned
#1741728232
sudo tuned-adm profile virtual-host
#1741728235
tuned-adm list
#1741728239
tuned-adm active
#1741728248
sudo tuned-adm verify
#1741728270
sudo virsh net-list --all
#1741728297
sudo usermod -aG libvirt $USER
#1741728301
id
#1741728325
ls /var/lib/libvirt/images/
#1741728344
sudo setfacl -R -b /var/lib/libvirt/images
#1741728351
sudo setfacl -R -m u:$USER:rwX /var/lib/libvirt/images
#1741728357
sudo setfacl -m d:u:$USER:rwx /var/lib/libvirt/images
#1741728364
getfacl /var/lib/libvirt/images
#1741728376
touch /var/lib/libvirt/images/test_file
#1741728384
rm -v /var/lib/libvirt/images/test_file
#1741729061
btop
#1741728384
rm -v /var/lib/libvirt/images/test_file
#1741729061
btop
#1741730148
ip a
#1741730192
sudo ufw allow in on virbr0 from any to any
#1741730212
sudo ufw status verbose
#1741730235
sudo vim  /etc/libvirt/network.conf
#1741730423
sudo systemctl restart libvirtd
#1741730431
sudo systemctl restart libvirtd.service 
#1741733759
zfs status
#1741733763
zfs list
#1741733769
zpool status
#1741733778
zpool list
#1741728376
touch /var/lib/libvirt/images/test_file
#1741728384
rm -v /var/lib/libvirt/images/test_file
#1741730581
history 
#1741730586
nload 
#1741732711
nvidia-smi \
#1741732716
nvidia-smi 
#1741732828
arcs
#1741732856
zpool-iostat 
#1741732899
btop
#1741728336
htop
#1741733881
top -o %MEM
#1741735510
htop
#1741740578
sudo dnf update --refresh
#1741740601
sudo zfs-update 
#1741740608
sudo kernel-update 
#1741740613
exit
#1741732711
nvidia-smi \
#1741732716
nvidia-smi 
#1741728336
htop
#1741733881
top -o %MEM
#1741735510
htop
#1741740608
sudo kernel-update 
#1741763922
history 
#1741763936
cat /sys/module/zfs/parameters/zfs_arc_max
#1741764145
df -h
#1741764170
psd p
#1741764197
free -m
#1741764206
zpool list
#1741764215
zpool status
#1741764220
zfs list
#1741766309
zpool-iostat 
#1741766324
arcs
#1741767236
sudo dnf install pstree
#1741767251
pstree.x11 
#1741767277
pstree
#1741772449
sudo dnf update --refresh
#1741772466
zfs-update 
#1741772472
sudo zfs-update 
#1741772701
btop
#1741776157
sudo dnf install fish
#1741776187
fish
#1741778094
exit
#1741763802
sudo dnf update --refresh
#1741763907
htp[
#1741763913
htop
#1741776157
sudo dnf install fish
#1741776187
fish
#1741763802
sudo dnf update --refresh
#1741763907
htp[
#1741763913
htop
#1741835753
dd if=/dev/zero of=~/testfile bs=64k count=100000
#1741835788
ls -lah
#1741835799
dd if=/dev/zero of=~/testfile bs=1024k count=100000
#1741835812
dd if=/dev/zero of=~/testfile bs=512k count=100000
#1741835832
rm testfile 
#1741835841
dd if=/dev/zero of=~/testfile bs=128k count=100000
#1741835914
zfs get recordsize zroot
#1741835954
exit
#1741835914
zfs get recordsize zroot
#1741836163
zfs get atime
#1741836184
dd if=/dev/zero of=~/testfile bs=1M count=10000
#1741836249
zfs get primarycache
#1741836257
zfs get secondarycache
#1741836305
exit
#1741836902
dkms status
#1741836968
dkms --help
#1741836416
sudo dnf remove fish
#1741836432
sudo dnf autoremove 
#1741836441
sudo dnf update --refresh
#1741836583
sudo zfs-update 
#1741836590
sudo kernel-update 
#1741836789
modinfo zfs | grep vermagic
#1741836829
htop
#1741836542
ls
#1741836546
ls -lah
#1741836550
rm testfile 
#1741836553
history 
#1741836561
sudo iotop 
#1741837117
modinfo zfs | grep vermagic
#1741837125
uname -a
#1741837131
lsmod |grep zfs
#1741837164
zfs list
#1741837169
zpool list
#1741837173
zpool status
#1741837250
ls /etc/zfs
#1741837268
sudo zfs get all
#1741837164
zfs list
#1741837169
zpool list
#1741837173
zpool status
#1741837250
ls /etc/zfs
#1741837268
sudo zfs get all
#1741838994
df -h
#1741839036
ping 8.8.8.8
#1741839298
dd if=/dev/zero of=~/testfile bs=128K count=10000
#1741839311
dd if=/dev/zero of=~/testfile64 bs=64K count=10000
#1741839320
dd if=/dev/zero of=~/testfile512 bs=512K count=10000
#1741839333
dd if=/dev/zero of=~/testfile4 bs=4K count=10000
#1741839355
dd if=/dev/zero of=~/testfile1M bs=1M count=10000
#1741839367
rm testfile*
#1741839370
ls -lah
#1741839492
sudo -i
#1741839602
cd /run/media/liviu/
#1741839605
cd Ventoy/
#1741839609
cd fedora/
#1741839613
cd zfs\ settings/
#1741839615
ls
#1741839627
sudo zfs get all zroot > zfs_settings.txt
#1741839631
vim zfs_settings.txt 
#1741839678
cat /etc/zfs/zpool.cache
#1741839717
sudo zpool import zroot
#1741840456
sudo dnf search vainfo
#1741843095
sgdisk 
#1741843110
lsblk 
#1741839605
cd Ventoy/
#1741839609
cd fedora/
#1741839613
cd zfs\ settings/
#1741839615
ls
#1741839627
sudo zfs get all zroot > zfs_settings.txt
#1741839631
vim zfs_settings.txt 
#1741839678
cat /etc/zfs/zpool.cache
#1741839717
sudo zpool import zroot
#1741840456
sudo dnf search vainfo
#1741840891
cat /sys/module/zfs/parameters/zfs_arc_max
#1741840891
cat /sys/module/zfs/parameters/zfs_arc_min
#1741840937
arcstat.py
#1741840942
arcstat
#1741840947
arcstat --help
#1741840955
arcstat -f time,hit%,dh%,ph%,mh% 1
#1741840961
arcs
#1741841035
sudo iostat 
#1741841043
sudo iostat -c 1
#1741841077
sudo ionice 
#1741841083
sudo iotop 
#1741841149
nvidia-s
#1741841152
nvidia-smi 
#1741841945
sudo zfs set recordsize=512K zroot
#1741841951
sudo zfs get recordsize
#1741841979
dd if=/dev/zero of=~/testfile1M bs=1M count=100000
#1741841995
ls -lah
#1741842000
rm testfile1M 
#1741842004
ls -la
#1741842009
zfs list
#1741842021
zpool list
#1741842271
zfs iostat -v
#1741842279
zpool iostat -v
#1741842285
zpool iostat -v -c 1
#1741842292
zpool iostat -x 1
#1741842296
zpool iostat -c 1
#1741842518
zpool iostat -v -n 1
#1741843398
ls -l /
#1741843427
ls -l /var
#1741843936
history |grep enable
#1741843959
history |grep scrub
#1741843968
sudo zpool scrub zroot
#1741844033
sudo zpool scrub zdev
#1741844035
zpool status
#1741844103
btop
#1741844330
history 
#1741844363
exit
#1741839609
cd fedora/
#1741839613
cd zfs\ settings/
#1741839627
sudo zfs get all zroot > zfs_settings.txt
#1741839631
vim zfs_settings.txt 
#1741839678
cat /etc/zfs/zpool.cache
#1741839717
sudo zpool import zroot
#1741840456
sudo dnf search vainfo
#1741843095
sgdisk 
#1741843110
lsblk 
#1741839605
cd Ventoy/
#1741839609
cd fedora/
#1741839613
cd zfs\ settings/
#1741839627
sudo zfs get all zroot > zfs_settings.txt
#1741839631
vim zfs_settings.txt 
#1741839678
cat /etc/zfs/zpool.cache
#1741839717
sudo zpool import zroot
#1741840456
sudo dnf search vainfo
#1741840891
cat /sys/module/zfs/parameters/zfs_arc_max
#1741840891
cat /sys/module/zfs/parameters/zfs_arc_min
#1741840937
arcstat.py
#1741840942
arcstat
#1741840947
arcstat --help
#1741840955
arcstat -f time,hit%,dh%,ph%,mh% 1
#1741840961
arcs
#1741841035
sudo iostat 
#1741841043
sudo iostat -c 1
#1741841077
sudo ionice 
#1741841083
sudo iotop 
#1741841149
nvidia-s
#1741841152
nvidia-smi 
#1741841945
sudo zfs set recordsize=512K zroot
#1741841951
sudo zfs get recordsize
#1741841979
dd if=/dev/zero of=~/testfile1M bs=1M count=100000
#1741841995
ls -lah
#1741842000
rm testfile1M 
#1741842271
zfs iostat -v
#1741842279
zpool iostat -v
#1741842285
zpool iostat -v -c 1
#1741842292
zpool iostat -x 1
#1741842296
zpool iostat -c 1
#1741842518
zpool iostat -v -n 1
#1741843398
ls -l /
#1741843427
ls -l /var
#1741843936
history |grep enable
#1741843959
history |grep scrub
#1741843968
sudo zpool scrub zroot
#1741844033
sudo zpool scrub zdev
#1741844370
history 
#1741844406
history |grep @
#1741844452
sudo zfs snapshot zroot/home@2025-03-13-094100
#1741844466
zfs -t snapshot
#1741844478
zfs list -t snapshot
#1741844899
watch 'du -s /home/liviu/.cache/mozilla/firefox/'
#1741845017
sudo lsof +D /home/liviu/.cache
#1741845379
psd --reset
#1741845477
history |grep psd
#1741845676
systemctl --user status psd-resync.service 
#1741845709
df -h
#1741845890
psd --debug
#1741845902
psd preview
#1741845967
ls -la ~/.cache/librewolf/
#1741845972
ls -la ~/.cache/mozilla/firefox/
#1741846021
df -h|grep psd
#1741846156
df -h|grep 1000
#1741846474
psd clean
#1741846685
vim /home/liviu/.config/psd/psd.conf
#1741846708
systemctl --user stop psd
#1741846723
systemctl --user start psd
#1741846725
cat /home/liviu/.config/psd/.psd.conf
#1741846729
psd p
#1741846835
systemctl --user enable psd
#1741846842
systemctl --user status psd
#1741853710
sudo zfs set compression=lz4 zroot
#1741853716
sudo zfs set compression=lz4 zdev
#1741853737
zfs get compression
#1741853871
mount /zroot
#1741853918
zfs get compression,compressratio zroot/*
#1741853925
zfs get compression,compressratio zroot
#1741853929
zfs get compression,compressratio zdev
#1741853969
zfs get compression,compressratio,recordsize zdev
#1741853975
zfs get compression,compressratio,recordsize zroot
#1741854019
zfs list -o name,compressratio,logicalused,used
#1741854110
sudo zdb -dddd zroot | grep compress
#1741854128
zpool list
#1741854132
zpool status
#1741854186
rsync
#1741854189
sync
#1741854196
sync --help
#1741854217
btop
#1741854277
cd /zroot/
#1741854309
zfs list
#1741854356
zfs set snapdir=visible zroot
#1741854356
zfs set snapdir=visible zroot/ROOT/fedora
#1741854356
zfs set snapdir=visible zroot/home
#1741854362
sudo zfs set snapdir=visible zroot
#1741854368
sudo zfs set snapdir=visible zroot/ROOT/fedora
#1741854375
sudo zfs set snapdir=visible zroot/home
#1741854387
ls -la /
#1741854392
ls -la /home/
#1741854446
ls shares/
#1741854450
ls -la shares/
#1741854456
cd 2025-03-13-074600-post-kernel6.13.6/
#1741854458
ls -la
#1741854465
cd .zfs/
#1741854468
cd snapshot/
#1741854476
cd 2025-03-13-074600-post-kernel6.13.6
#1741854481
cd home/
#1741854484
cd ..
#1741854490
cd etc
#1741854491
ls
#1741854495
cat fstab 
#1741854497
cd /
#1741854498
exit
#1741837250
ls /etc/zfs
#1741837268
sudo zfs get all
#1741837630
sudo zfs snapshot zroot@2025-03-13-074600-post-kernel6.13.6
#1741837920
sudo zfs snapshot zroot/ROOT/fedora@2025-03-13-074600-post-kernel6.13.6
#1741837921
sudo zfs list -t snapshot
#1741838122
uname -a
#1741838256
sudo dnf update --refresh
#1741838415
zpool list
#1741838419
zpool status
#1741838439
lsblk 
#1741838947
htop
#1741838947
htop
#1741855033
echo ${XDG_RUNTIME_DIR}
#1741855070
ls ${XDG_RUNTIME_DIR}
#1741855079
cd ${XDG_RUNTIME_DIR}
#1741855193
cd psd/
#1741855194
ls
#1741855194
ls
#1741856090
btop
#1741857264
cd .cache/
#1741857268
cd mozilla/firefox/
#1741857285
cd ~/.mozilla/firefox/
#1741857287
ls -la
#1741861721
cd .config/
#1741861723
ls -la
#1741861734
ls -lah
#1741861742
cat background 
#1741861743
1;1;120;120;1;0x
#1741861748
rm background 
#1741861748
rm background 
#1741862912
mc a2r6dd7l.default-default-back-ovfs/ a2r6dd7l.default-default
#1741862923
ls
#1741862934
mv a2r6dd7l.default-default-back-ovfs a2r6dd7l.default-default
#1741862937
ls -la
#1741862939
cat installs.ini 
#1741862945
cat profiles.ini 
#1741838122
uname -a
#1741838256
sudo dnf update --refresh
#1741838415
zpool list
#1741838419
zpool status
#1741838439
lsblk 
#1741838947
htop
#1741838947
htop
#1741855033
echo ${XDG_RUNTIME_DIR}
#1741855070
ls ${XDG_RUNTIME_DIR}
#1741855079
cd ${XDG_RUNTIME_DIR}
#1741856090
btop
#1741857264
cd .cache/
#1741857268
cd mozilla/firefox/
#1741857285
cd ~/.mozilla/firefox/
#1741861721
cd .config/
#1741861734
ls -lah
#1741861742
cat background 
#1741861743
1;1;120;120;1;0x
#1741861748
rm background 
#1741861748
rm background 
#1741862912
mc a2r6dd7l.default-default-back-ovfs/ a2r6dd7l.default-default
#1741862934
mv a2r6dd7l.default-default-back-ovfs a2r6dd7l.default-default
#1741862939
cat installs.ini 
#1741862945
cat profiles.ini 
#1741864967
df -h
#1741865009
psd p
#1741865033
cd /run/user/1000/psd/
#1741865036
mkdir psd
#1741865048
rm -rf psd
#1741865929
cd psd/
#1741865933
mkdir firefox
#1741865937
rm -rf cache2/
#1741865983
mkdir librewolf
#1741866091
cd librewolf/
#1741866143
cd ..
#1741866146
cd firefox/
#1741866413
cd ../librewolf/
#1741866758
ls
#1741866962
ls -la
#1741867463
cd cache2/
#1741867466
ls -laR
#1741868470
cd
#1741868487
cd .cache/librewolf/
#1741868488
ls
#1741868497
watxh 'du -s a2r6dd7l.default-default'
#1741868501
watch 'du -s a2r6dd7l.default-default'
#1741867831
df -h
#1741867869
cd /run/user/1000/psd/librewolf/
#1741867870
ls
#1741867880
watch 'du -s cache2'
#1741867682
cd
#1741867692
cd .cache/
#1741867696
cd mozilla/firefox/
#1741867697
ls
#1741867711
watch 'du -s s3q6whm5.default-release'
#1741867711
watch 'du -s s3q6whm5.default-release'
#1741868675
systemctl --user psd status
#1741868692
systemctl --user status psd 
#1741868701
systemctl --user start psd 
#1741868703
psd p
#1741868894
systemctl --user stop psd 
#1741868920
history 
#1741853969
zfs get compression,compressratio,recordsize zdev
#1741853975
zfs get compression,compressratio,recordsize zroot
#1741854019
zfs list -o name,compressratio,logicalused,used
#1741854110
sudo zdb -dddd zroot | grep compress
#1741854128
zpool list
#1741854132
zpool status
#1741854186
rsync
#1741854189
sync
#1741854196
sync --help
#1741854217
btop
#1741854277
cd /zroot/
#1741854309
zfs list
#1741854356
zfs set snapdir=visible zroot
#1741854356
zfs set snapdir=visible zroot/ROOT/fedora
#1741854356
zfs set snapdir=visible zroot/home
#1741854362
sudo zfs set snapdir=visible zroot
#1741854368
sudo zfs set snapdir=visible zroot/ROOT/fedora
#1741854375
sudo zfs set snapdir=visible zroot/home
#1741854387
ls -la /
#1741854392
ls -la /home/
#1741854446
ls shares/
#1741854450
ls -la shares/
#1741854456
cd 2025-03-13-074600-post-kernel6.13.6/
#1741854465
cd .zfs/
#1741854468
cd snapshot/
#1741854476
cd 2025-03-13-074600-post-kernel6.13.6
#1741854481
cd home/
#1741854490
cd etc
#1741854495
cat fstab 
#1741854497
cd /
#1741854498
exit
#1741837250
ls /etc/zfs
#1741837268
sudo zfs get all
#1741837630
sudo zfs snapshot zroot@2025-03-13-074600-post-kernel6.13.6
#1741837920
sudo zfs snapshot zroot/ROOT/fedora@2025-03-13-074600-post-kernel6.13.6
#1741837921
sudo zfs list -t snapshot
#1741838122
uname -a
#1741838256
sudo dnf update --refresh
#1741838415
zpool list
#1741838419
zpool status
#1741838439
lsblk 
#1741838947
htop
#1741838947
htop
#1741855033
echo ${XDG_RUNTIME_DIR}
#1741855070
ls ${XDG_RUNTIME_DIR}
#1741855079
cd ${XDG_RUNTIME_DIR}
#1741855193
cd psd/
#1741856090
btop
#1741857264
cd .cache/
#1741857268
cd mozilla/firefox/
#1741857285
cd ~/.mozilla/firefox/
#1741861721
cd .config/
#1741861734
ls -lah
#1741861742
cat background 
#1741861743
1;1;120;120;1;0x
#1741861748
rm background 
#1741861865
librewolf --verbose
#1741861897
librewolf --log-level=debug &> ~/librewolf_debug.log
#1741861903
cat librewolf_debug.log 
#1741861908
rm librewolf_debug.log 
#1741861940
journalctl -xe | grep librewolf
#1741862768
mc
#1741863223
mkdir /home/liviu/.librewolf/a2r6dd7l.default-default/cache
#1741864391
ls /home/liviu/.librewolf/a2r6dd7l.default-default/cache
#1741864705
cd /usr/local/bin/
#1741864712
which firefox
#1741864722
dpkg -L firefox
#1741864763
cd /usr/share/applications/org.mozilla.firefox.desktop
#1741864767
cd /usr/share/applications/
#1741864776
rpm -ql firefox
#1741864850
cd /usr/lib64/firefox/defaults/pref/
#1741864936
sudo vim mozilla.cfg
#1741865175
ls -la /usr/lib64/firefox/firefox
#1741865188
sudo mv mozilla.cfg /usr/lib64/firefox/
#1741865877
sudo vim local-settings.js 
#1741865999
cat local-settings.js 
#1741866199
cd ..
#1741866345
cd /usr/share/librewolf
#1741866364
cp mozilla.cfg /usr/share/librewolf/
#1741866368
sudo cp mozilla.cfg /usr/share/librewolf/
#1741866610
rpm -ql librewolf
#1741866653
sudo vim local-settings.js
#1741867644
df -h
#1741867652
cd /run/user/1000
#1741867656
cd psd
#1741867662
cd firefox/
#1741867669
ls -laR cache2/
#1741867760
watch 'du -s cache2'
#1741868641
cd -
#1741868643
cd
#1741868647
history 
#1741868954
cd /usr/lib64/firefox
#1741868985
cd /usr/share/librewolf/defaults/pref/
#1741869009
cd cd /usr/lib64/firefox/defaults/pref/
#1741869027
sudo rm local-settings.js 
#1741869074
cd /usr/share/librewolf/
#1741869080
cat mozilla.cfg 
#1741869085
sudo rm mozilla.cfg 
#1741869356
cd /run/user/1000/psd
#1741869357
ls
#1741869363
rm -rf firefox/
#1741869367
rm -rf librewolf/
#1741869369
ls -la
#1741869682
systemctl --user status psd
#1741869752
systemctl --user stop psd
#1741869773
systemctl --user start psd
#1741869779
psd p
#1741872830
df -h
#1741874881
hwinfo
#1741874894
sudo lshw -businfo
#1741869682
systemctl --user status psd
#1741869752
systemctl --user stop psd
#1741869773
systemctl --user start psd
#1741872454
df -h
#1741872487
sudo dnf update --refresh
#1741872506
sudo zfs-update 
#1741872513
sudo kernel-update 
#1741872523
flatpak update
#1741872640
psd p
#1741872671
history |grep psd.conf
#1741872680
vim /home/liviu/.config/psd/psd.conf
#1741872707
btop
#1741874441
history |grep ix
#1741874624
sudo lshw
#1741874670
inxi
#1741874680
sudo dnf install inxi
#1741874699
inxi 
#1741874705
sudo inxi 
#1741874717
sudo inxi -h
#1741874755
inxi -v4 -c6 OR inxi -bDc 6 OR inxi -ezjJxy 85
#1741874835
inxi -ezjJxy 85
#1741874848
inxi -v4 -c6 OR inxi -bDc 6
#1741874850
inxi -v4 -c6
#1741874917
fastfetch 
#1741876355
ss -s
#1741876372
netstat -an | grep ESTABLISHED | wc -l
#1741876384
ss -tup | grep firefox
#1741876390
ss -tup | grep -i libre
#1741881949
gzip -d FuguIta-X.X-ARCH-YYYYMMDDDN.iso.gz
#1741881954
gzip -d FuguIta-7.6-amd64-202502261.iso.gz 
#1741874917
fastfetch 
#1741877343
nvidia-smi 
#1741878994
df -h
#1741869085
sudo rm mozilla.cfg 
#1741869356
cd /run/user/1000/psd
#1741869363
rm -rf firefox/
#1741869367
rm -rf librewolf/
#1741869682
systemctl --user status psd
#1741869752
systemctl --user stop psd
#1741869773
systemctl --user start psd
#1741869779
psd p
#1741870443
cd .cache/mozilla/firefox/
#1741871235
history |grep snapshot
#1741871263
sudo zfs snapshot zroot/home@2025-03-13-171000
#1741871286
zfs list 
#1741871295
zpool list
#1741871299
zpool status
#1741871303
zfs list -t snapshot -o name,used,creation
#1741871450
ls -la
#1741871457
df -h firefox/
#1741871489
du -h firefox
#1741871496
du -s firefox
#1741871499
du -h firefox/
#1741871501
du -h firefox/*
#1741871506
cd firefox/
#1741871511
cd qzbcunyg.default-release/
#1741871513
ls
#1741871522
du -h .
#1741871534
cd ..
#1741871538
ls -lah
#1741871802
df -h
#1741871839
mount |grep 1000
#1741871920
sudo vim /etc/fstab 
#1741871969
sudo systemctl daemon-reload
#1741871970
mount -o remount /run/user/1000
#1741871974
sudo mount -o remount /run/user/1000
#1741872439
htop
#1741872439
htop
#1741883576
systemctl --user stop psd
#1741884486
systemctl --user start psd
#1741884490
psd p
#1741882673
sudo dnf update --refresh
#1741882725
df -h
#1741882818
psd p
#1741883040
watch 'du -s /run/user/1000/psd/liviu-*'
#1741871970
mount -o remount /run/user/1000
#1741871974
sudo mount -o remount /run/user/1000
#1741872439
htop
#1741883067
cd .cache/librewolf/
#1741883068
ls
#1741883074
du -s 4stdh45n.default-default/
#1741883093
watch 'du -s 4stdh45n.default-default'
#1741883099
watch 'du -s 4stdh45n.default-default/'
#1741883138
du -s 4stdh45n.default-default*
#1741883146
du -h 4stdh45n.default-default/*
#1741883149
du -s 4stdh45n.default-default/*
#1741883438
ls -la
#1741884536
watch 'du -s 4stdh45n.default-default/*'
#1741869080
cat mozilla.cfg 
#1741869085
sudo rm mozilla.cfg 
#1741869363
rm -rf firefox/
#1741869367
rm -rf librewolf/
#1741869779
psd p
#1741874881
hwinfo
#1741874894
sudo lshw -businfo
#1741872487
sudo dnf update --refresh
#1741872506
sudo zfs-update 
#1741872513
sudo kernel-update 
#1741872523
flatpak update
#1741872640
psd p
#1741872671
history |grep psd.conf
#1741872680
vim /home/liviu/.config/psd/psd.conf
#1741872707
btop
#1741874441
history |grep ix
#1741874624
sudo lshw
#1741874670
inxi
#1741874680
sudo dnf install inxi
#1741874699
inxi 
#1741874705
sudo inxi 
#1741874717
sudo inxi -h
#1741874755
inxi -v4 -c6 OR inxi -bDc 6 OR inxi -ezjJxy 85
#1741874835
inxi -ezjJxy 85
#1741874848
inxi -v4 -c6 OR inxi -bDc 6
#1741874850
inxi -v4 -c6
#1741874917
fastfetch 
#1741876355
ss -s
#1741876372
netstat -an | grep ESTABLISHED | wc -l
#1741876384
ss -tup | grep firefox
#1741876390
ss -tup | grep -i libre
#1741881949
gzip -d FuguIta-X.X-ARCH-YYYYMMDDDN.iso.gz
#1741881954
gzip -d FuguIta-7.6-amd64-202502261.iso.gz 
#1741874917
fastfetch 
#1741877343
nvidia-smi 
#1741869085
sudo rm mozilla.cfg 
#1741869363
rm -rf firefox/
#1741869367
rm -rf librewolf/
#1741869779
psd p
#1741870443
cd .cache/mozilla/firefox/
#1741871235
history |grep snapshot
#1741871263
sudo zfs snapshot zroot/home@2025-03-13-171000
#1741871286
zfs list 
#1741871295
zpool list
#1741871299
zpool status
#1741871303
zfs list -t snapshot -o name,used,creation
#1741871457
df -h firefox/
#1741871489
du -h firefox
#1741871499
du -h firefox/
#1741871501
du -h firefox/*
#1741871511
cd qzbcunyg.default-release/
#1741871522
du -h .
#1741871538
ls -lah
#1741871839
mount |grep 1000
#1741871920
sudo vim /etc/fstab 
#1741871969
sudo systemctl daemon-reload
#1741871970
mount -o remount /run/user/1000
#1741871974
sudo mount -o remount /run/user/1000
#1741872439
htop
#1741883234
cd .cache/mozilla/
#1741883239
du -s firefox/*
#1741883244
du -s firefox*
#1741883247
du -s firefox
#1741883251
du -s firefox/qzbcunyg.default-release/*
#1741883270
watch 'du -s firefox/qzbcunyg.default-release/*'
#1741883308
cd firefox/
#1741884560
watch 'du -s qzbcunyg.default/*'
#1741885314
cd /run/user/1000/psd
#1741886224
psd lean
#1741886228
psd clean
#1741887534
lsof -p $(pgrep firefox) | grep cache
#1741887614
sudo -i
#1741888246
vim ~/.bash_profile 
#1741888430
cd
#1741888438
cd .config/systemd/user/default.target.wants/
#1741888663
cp psd.service psd.service.orig
#1741888843
sudo vim psd.service 
#1741888936
cd /run/user/1000/psd/
#1741888942
rm -rf cache2/
#1741888946
rm -rf mozilla/
#1741889055
cd -
#1741889078
rm psd.service
#1741889084
mv psd.service.orig psd.service
#1741889086
ls -la
#1741889111
cat psd.service 
#1741889152
vim b2tmpfs.service
#1741889216
mv b2tmpfs.service ../
#1741889343
systemctl --user status psd.service
#1741889401
sudo vim /usr/lib/systemd/user/psd.service 
#1741889442
cd ..
#1741889452
ls /usr/lib/systemd/user/
#1741889469
systemctl --user start b2tmpfs.service 
#1741889481
systemctl --user status b2tmpfs.service
#1741889534
sudo visudo 
#1741889548
rm b2tmpfs.service 
#1741889550
cd default.target.wants/
#1741889552
ls
#1741889668
cat /usr/lib/systemd/user/psd.service
#1741889707
vim psd.service 
#1741889758
systemctl --user stop psd
#1741889787
ls /run/user/1000/psd/
#1741889844
df -h
#1741889858
systemctl --user daemon-reload
#1741889862
systemctl --user status psd
#1741889885
systemctl --user start psd
#1741889893
journalctl --user -xeu psd.service
#1741889926
sudo vim /usr/lib/systemd/user/psd.service
#1741889937
exit
#1741882499
htp
#1741882501
htop
#1741889978
df -h
#1741890005
sudo vim /usr/lib/systemd/user/psd.service
#1741890022
cat /etc/fstab 
#1741890027
cat .bash_profile 
#1741890034
vim .bash_profile 
#1741890040
exit
#1741889469
systemctl --user start b2tmpfs.service 
#1741889481
systemctl --user status b2tmpfs.service
#1741889534
sudo visudo 
#1741889548
rm b2tmpfs.service 
#1741889550
cd default.target.wants/
#1741889552
ls
#1741889668
cat /usr/lib/systemd/user/psd.service
#1741889707
vim psd.service 
#1741889787
ls /run/user/1000/psd/
#1741889858
systemctl --user daemon-reload
#1741889893
journalctl --user -xeu psd.service
#1741889937
exit
#1741882499
htp
#1741882501
htop
#1741890022
cat /etc/fstab 
#1741890027
cat .bash_profile 
#1741890034
vim .bash_profile 
#1741890040
exit
#1741890114
/bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozilla
#1741890127
sudo /bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozill
#1741890135
sudo vim /usr/lib/systemd/user/psd.service
#1741890156
sudo /usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozilla
#1741890195
ls -la /run/user/1000/psd/
#1741890215
sudo dmesg 
#1741890219
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozilla
#1741890237
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla/ /home/liviu/.cache/mozilla/
#1741890446
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla/ ~/.cache/mozilla/
#1741890460
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/librewolf/ ~/.cache/librewolf/
#1741890514
free -m
#1741890524
ls -lh /home/liviu/.cache/mozilla
#1741890524
ls -lh /home/liviu/.cache/librewolf
#1741890537
sudo umount ~/.cache/mozilla
#1741890542
sudo umount ~/.cache/librewolf/
#1741890561
systemctl --user stop psd
#1741890585
mount
#1741890652
systemctl --user start psd
#1741890655
systemctl --user status psd
#1741890665
df -h
#1741890681
free -h
#1741890692
mount |grep liviu
#1741890712
mount |grep librewolf
#1741890752
mount |grep mozilla
#1741890784
mount|grep cache
#1741890524
ls -lh /home/liviu/.cache/mozilla
#1741890524
ls -lh /home/liviu/.cache/librewolf
#1741890537
sudo umount ~/.cache/mozilla
#1741890542
sudo umount ~/.cache/librewolf/
#1741890585
mount
#1741890692
mount |grep liviu
#1741890712
mount |grep librewolf
#1741890752
mount |grep mozilla
#1741890784
mount|grep cache
#1741890990
psd p
#1741891022
cat /etc/fstab 
#1741891174
sudo mount -o remount,size=8G /run/user/1000
#1741891214
sudo vim /usr/lib/systemd/user/psd.service
#1741891312
cd .config/systemd/user/
#1741891313
ls
#1741891316
cd default.target.wants/
#1741891319
vim psd.service 
#1741891347
systemctl --user daemon-reload
#1741891362
systemctl --user stop psd
#1741891402
umount /home/liviu/.cache/mozilla
#1741891406
sudo umount /home/liviu/.cache/mozilla
#1741891410
sudo umount /home/liviu/.cache/librewolf 
#1741891423
systemctl --user start psd
#1741891428
systemctl --user status psd
#1741891444
mount |grep 1000
#1741891450
df -h
#1741891466
mount|grep mozilla
#1741891480
mount|grep librewolf
#1741891510
history 
#1741891541
free -h
#1741891565
df -h /home/liviu/.cache/librewolf/
#1741891574
df -h /home/liviu/.cache/mozilla/
#1741891877
lsof +D /home/liviu/.cache/mozilla
#1741891895
lsof +D /home/liviu/.cache/librewolf
#1741892126
df -h /home/liviu/.cache/mozilla/
#1741892133
df -h /home/liviu/.cache/librewolf/
#1741892170
cd .config/systemd/user/default.target.wants/
#1741892171
ls
#1741892174
cat psd.service 
#1741891428
systemctl --user status psd
#1741891444
mount |grep 1000
#1741891466
mount|grep mozilla
#1741891480
mount|grep librewolf
#1741891510
history 
#1741891541
free -h
#1741891877
lsof +D /home/liviu/.cache/mozilla
#1741891895
lsof +D /home/liviu/.cache/librewolf
#1741892170
cd .config/systemd/user/default.target.wants/
#1741892171
ls
#1741892174
cat psd.service 
#1741895081
df -h
#1741895098
mount |grep librewolf
#1741895139
umount /home/liviu/.cache/mozilla 
#1741895164
mount |grep mozilla
#1741895168
psd p
#1741895267
/usr/local/bin/mount_cache.sh 
#1741895287
sudo umount /home/liviu/.cache/mozilla 
#1741895304
ls -la /run/user/1000/psd/
#1741895317
cat /usr/local/bin/mount_cache.sh 
#1741895328
vim /usr/local/bin/mount_cache.sh 
#1741895370
mount
#1741895982
df -h /home/liviu/.cache/mozilla/
#1741896045
watch 'df -h /home/liviu/.cache/librewolf/'
#1741896051
watch 'df  /home/liviu/.cache/librewolf/'
#1741896361
df -h /home/liviu/.cache/librewolf/
#1741892174
cat psd.service 
#1741896085
watch 'df  /home/liviu/.cache/mozilla/'
#1741896339
lsof +D /home/liviu/.cache/librewolf
#1741896352
lsof +D /home/liviu/.cache/librewolf/
#1741896367
lsof +D /home/liviu/.cache/librewolf/4stdh45n.default-default/
#1741896372
lsof +D /home/liviu/.cache/librewolf/4stdh45n.default-default/cache2/
#1741896402
free -h
#1741896507
systemctl --user stop psd
#1741896511
psd p
#1741896672
df -h
#1741896683
mount
#1741901091
psd p
#1741901096
exit
#1741901807
btop
#1741874441
history |grep ix
#1741874624
sudo lshw
#1741874670
inxi
#1741874680
sudo dnf install inxi
#1741874699
inxi 
#1741874705
sudo inxi 
#1741874717
sudo inxi -h
#1741874755
inxi -v4 -c6 OR inxi -bDc 6 OR inxi -ezjJxy 85
#1741874835
inxi -ezjJxy 85
#1741874848
inxi -v4 -c6 OR inxi -bDc 6
#1741874850
inxi -v4 -c6
#1741874917
fastfetch 
#1741876355
ss -s
#1741876372
netstat -an | grep ESTABLISHED | wc -l
#1741876384
ss -tup | grep firefox
#1741876390
ss -tup | grep -i libre
#1741881949
gzip -d FuguIta-X.X-ARCH-YYYYMMDDDN.iso.gz
#1741881954
gzip -d FuguIta-7.6-amd64-202502261.iso.gz 
#1741874917
fastfetch 
#1741877343
nvidia-smi 
#1741869085
sudo rm mozilla.cfg 
#1741869363
rm -rf firefox/
#1741870443
cd .cache/mozilla/firefox/
#1741871235
history |grep snapshot
#1741871263
sudo zfs snapshot zroot/home@2025-03-13-171000
#1741871286
zfs list 
#1741871295
zpool list
#1741871299
zpool status
#1741871303
zfs list -t snapshot -o name,used,creation
#1741871457
df -h firefox/
#1741871489
du -h firefox
#1741871499
du -h firefox/
#1741871501
du -h firefox/*
#1741871511
cd qzbcunyg.default-release/
#1741871522
du -h .
#1741871538
ls -lah
#1741871839
mount |grep 1000
#1741871920
sudo vim /etc/fstab 
#1741871969
sudo systemctl daemon-reload
#1741871970
mount -o remount /run/user/1000
#1741871974
sudo mount -o remount /run/user/1000
#1741883239
du -s firefox/*
#1741883244
du -s firefox*
#1741883247
du -s firefox
#1741883251
du -s firefox/qzbcunyg.default-release/*
#1741883270
watch 'du -s firefox/qzbcunyg.default-release/*'
#1741883308
cd firefox/
#1741884560
watch 'du -s qzbcunyg.default/*'
#1741886224
psd lean
#1741886228
psd clean
#1741887534
lsof -p $(pgrep firefox) | grep cache
#1741888246
vim ~/.bash_profile 
#1741888663
cp psd.service psd.service.orig
#1741888843
sudo vim psd.service 
#1741888936
cd /run/user/1000/psd/
#1741888942
rm -rf cache2/
#1741888946
rm -rf mozilla/
#1741889078
rm psd.service
#1741889084
mv psd.service.orig psd.service
#1741889152
vim b2tmpfs.service
#1741889216
mv b2tmpfs.service ../
#1741889401
sudo vim /usr/lib/systemd/user/psd.service 
#1741889442
cd ..
#1741889452
ls /usr/lib/systemd/user/
#1741889469
systemctl --user start b2tmpfs.service 
#1741889481
systemctl --user status b2tmpfs.service
#1741889534
sudo visudo 
#1741889548
rm b2tmpfs.service 
#1741889550
cd default.target.wants/
#1741889787
ls /run/user/1000/psd/
#1741889937
exit
#1741882499
htp
#1741890022
cat /etc/fstab 
#1741890027
cat .bash_profile 
#1741890034
vim .bash_profile 
#1741890040
exit
#1741889469
systemctl --user start b2tmpfs.service 
#1741889481
systemctl --user status b2tmpfs.service
#1741889534
sudo visudo 
#1741889548
rm b2tmpfs.service 
#1741889550
cd default.target.wants/
#1741889787
ls /run/user/1000/psd/
#1741889937
exit
#1741882499
htp
#1741890022
cat /etc/fstab 
#1741890027
cat .bash_profile 
#1741890034
vim .bash_profile 
#1741890040
exit
#1741890114
/bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozilla
#1741890127
sudo /bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozill
#1741890156
sudo /usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozilla
#1741890195
ls -la /run/user/1000/psd/
#1741890215
sudo dmesg 
#1741890219
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla /home/liviu/.cache/mozilla
#1741890237
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla/ /home/liviu/.cache/mozilla/
#1741890446
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/mozilla/ ~/.cache/mozilla/
#1741890460
/usr/bin/sudo /bin/mount --bind /run/user/1000/psd/librewolf/ ~/.cache/librewolf/
#1741890514
free -m
#1741890524
ls -lh /home/liviu/.cache/mozilla
#1741890524
ls -lh /home/liviu/.cache/librewolf
#1741890537
sudo umount ~/.cache/mozilla
#1741890542
sudo umount ~/.cache/librewolf/
#1741890692
mount |grep liviu
#1741890784
mount|grep cache
#1741890524
ls -lh /home/liviu/.cache/mozilla
#1741890524
ls -lh /home/liviu/.cache/librewolf
#1741890537
sudo umount ~/.cache/mozilla
#1741890542
sudo umount ~/.cache/librewolf/
#1741890692
mount |grep liviu
#1741890784
mount|grep cache
#1741891022
cat /etc/fstab 
#1741891174
sudo mount -o remount,size=8G /run/user/1000
#1741891312
cd .config/systemd/user/
#1741891316
cd default.target.wants/
#1741891402
umount /home/liviu/.cache/mozilla
#1741891406
sudo umount /home/liviu/.cache/mozilla
#1741891444
mount |grep 1000
#1741891466
mount|grep mozilla
#1741891480
mount|grep librewolf
#1741891510
history 
#1741891877
lsof +D /home/liviu/.cache/mozilla
#1741891895
lsof +D /home/liviu/.cache/librewolf
#1741892393
free -h
#1741892420
df -h /home/liviu/.cache/mozilla
#1741892434
ls -la ~/.cache/mozilla/
#1741892504
du -sh ~/.cache/mozilla/*
#1741892508
du -sh ~/.cache/mozilla/
#1741892549
find ~/.cache/mozilla -type f -exec ls -l {} ;
#1741892553
find ~/.cache/mozilla -type f -exec ls -l {} \;
#1741892562
find ~/.cache/librewolf -type f -exec ls -l {} \;
#1741892594
du -sh ~/.cache/librewolf/
#1741892603
df -h
#1741892828
cd .cache/mozilla/
#1741892836
du -sh
#1741892880
lsof +D ~/.cache/mozilla
#1741892989
cd !
#1741892998
cd ~
#1741893246
mount |grep librewolf
#1741893254
mount |grep mozzilla
#1741893258
mount |grep mozilla
#1741893313
mount | grep mozilla
#1741893313
mount | grep librewolf
#1741893364
journalctl -xe | grep psd
#1741893438
sudo nano /etc/systemd/system/profile-sync-daemon.service
#1741893494
cd 
#1741893501
cd .config/systemd/user/default.target.wants/
#1741893691
sudo nano /usr/lib/systemd/user/psd.service
#1741893828
journalctl --user -u psd.service
#1741893888
cat /usr/lib/systemd/user/psd.service
#1741893975
chmod +x /home/liviu/mount_cache.sh 
#1741894053
vim mount_cache.sh
#1741894173
systemctl --user enable psd.service
#1741894177
sudo systemctl --user enable psd.service
#1741894218
sudo systemctl --user start psd.service
#1741894252
ps axf|grep librewolf
#1741894307
systemctl --user enable psd
#1741894313
sudo systemctl --user enable psd
#1741894349
cat moou
#1741894352
cat mount_cache.sh 
#1741894364
sudo -i
#1741894422
cd -
#1741894670
cat psd.service 
#1741894984
journalctl --user -xeu psd.service
#1741895433
sudo systemctl --user start psd
#1741895435
sudo systemctl --user status psd
#1741895445
psd
#1741895463
systemctl --user status psd
#1741895717
sudo vim /usr/lib/systemd/user/psd.service
#1741895730
vim psd.service 
#1741895739
systemctl --user daemon-reload
#1741895759
systemctl --user start psd.service
#1741895762
systemctl --user status psd.service
#1741896118
cat /usr/local/bin/mount_cache.sh 
#1741896973
ls -la /run/user/1000/
#1741896980
pwd
#1741896985
cd /run/user/1000/
#1741896993
cd psd
#1741897005
rm -rf librewofice/
#1741897093
ls -la .liviu-librewolf-4stdh45n.default-default
#1741897095
ls -la .liviu-librewolf-4stdh45n.default-default/work/
#1741897105
ls -la liviu-librewolf-4stdh45n.default-default
#1741897123
ls -la liviu-librewolf-4stdh45n.default-default-rw/
#1741897291
df -h /home/liviu/.cache/librewolf/
#1741897298
df -h /home/liviu/.cache/mozilla/
#1741897812
ls -la librewolf/
#1741897814
ls -la librewolf/o5e2pvx6.liviu/
#1741897818
ls -la librewolf/o5e2pvx6.liviu/cache2/
#1741898620
cd .librewolf/
#1741898630
vim librewolf.overrides.cfg 
#1741898973
systemctl --user stop psd
#1741899018
sudo dnf remove librewolf
#1741899051
cd
#1741899055
sudo dnf autoremove 
#1741899116
umount /home/liviu/.cache/librewolf 
#1741899120
sudo umount /home/liviu/.cache/librewolf 
#1741899138
vim /usr/local/bin/mount_cache.sh 
#1741899159
cd .config/psd/
#1741899162
vim psd.conf 
#1741899191
systemctl --user start psd
#1741899194
psd p
#1741899201
mount
#1741899217
ls -la /run/user/1000/psd
#1741899226
cd /run/user/1000/psd
#1741899227
ls
#1741899233
rm -rf librewolf/
#1741899235
ls -la
#1741899359
du -sh /home/liviu/.cache/mozilla/firefox/
#1741899363
du -s /home/liviu/.cache/mozilla/firefox/
#1741899371
watch 'du -s /home/liviu/.cache/mozilla/firefox/'
#1741901053
ftop
#1741901056
htop
#1741899363
du -s /home/liviu/.cache/mozilla/firefox/
#1741899371
watch 'du -s /home/liviu/.cache/mozilla/firefox/'
#1741901053
ftop
#1741901056
htop
#1741927083
sudo dnf update
#1741927103
mount|grep mozilla
#1741927126
mount|grep 1000
#1741927138
psd p
#1741927166
sudo systemctl --user enable psd
#1741927203
mv /home/liviu/.config/systemd/user/default.target.wants/psd.service /home/liviu/.config/systemd/user/default.target.wants/psd.service.orig
#1741927211
systemctl --user enable psd
#1741927214
systemctl --user status psd
#1741927218
systemctl --user start psd
#1741927220
mouont
#1741927223
mount
#1741927238
cat /home/liviu/.config/systemd/user/default.target.wants/psd.service
#1741927282
sudo dnf update --refresh
#1741927397
sudo kernel-update 
#1741927403
sudo zfs-update 
#1741927456
sudo systemctl enable nvidia-hibernate.service nvidia-suspend.service nvidia-resume.service nvidia-powerd.service
#1741927468
sudo systemctl status nvidia-persistenced.service 
#1741927472
exit
#1741927579
nvidia-smi 
#1741927597
sudo dnf update --refresh
#1741927638
flatpak update
#1741927697
flatpak config 
#1741927711
exit
#1741927711
exit
#1741928128
sudo install librewolf
#1741928143
sudo dnf install librewolf
#1741928810
mkdir /run/user/1000/psd/librewolf
#1741928812
sudo /bin/mount -o size=8G --bind /run/user/1000/psd/librewolf /home/liviu/.cache/librewol
#1741928817
vim /usr/local/bin/mount_cache.sh 
#1741928825
sudo /bin/mount -o size=8G --bind /run/user/1000/psd/librewolf /home/liviu/.cache/librewolf
#1741928845
history |grep psd
#1741928866
history |grep psd.conf
#1741928874
vim /home/liviu/.config/psd/psd.conf
#1741928897
systemctl --user stop psd
#1741928902
systemctl --user status psd
#1741928908
systemctl --user start psd
#1741928911
psd p
#1741929167
df -h /home/liviu/.cache/librewolf/
#1741929173
df -h /home/liviu/.cache/mozilla/
#1741932769
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors 
#1741938799
vainfo
#1741939281
cd .librewolf/
#1741939282
ls
#1741927818
nvidia-smi 
#1741927830
mount
#1741927903
htop
#1741938799
vainfo
#1741939281
cd .librewolf/
#1741939282
ls
#1741939858
nvidia-cuda-mps-control 
#1741939871
nvidia-ngx-updater 
#1741939879
nvidia-smi 
#1741940449
flatpak search waterfox
#1741940460
flatpak install waterfox
#1741942148
ls -la /etc/sudo.conf
#1741942505
btop
#1741942703
echo none | sudo tee /sys/block/sda/queue/scheduler
#1741942709
cat /sys/block/sda/queue/scheduler 
#1741942782
cd /boot/loader/entries/
#1741942790
sudo ls -la /boot/loader/entries/
#1741942861
sudo -i
#1741942782
cd /boot/loader/entries/
#1741942790
sudo ls -la /boot/loader/entries/
#1741943204
echo none | sudo tee /sys/block/sda/queue/scheduler
#1741943772
history |grep commandline
#1741943776
sudo -i
#1741943833
cat /etc/zfs/zfsbootmenu/zfsbootmenu.conf
#1741943836
cat /sys/block/sda/queue/scheduler 
#1741943996
cat /etc/udev/rules.d/90-ioschedulers.rules
#1741944069
grep "" /sys/block/*/queue/scheduler
#1741944108
sudo vim /etc/udev/rules.d/
#1741944122
sudo vim /etc/udev/rules.d/60-ioschedulers.rules
#1741944148
ls /sys/block/sdb/queue/iosched
#1741944172
ls /sys/block/sda/queue/iostats
#1741944185
ls /sys/block/sda/queue/
#1741944208
cat /sys/block/sdb/queue/iosched/fifo_batch
#1741944247
cat /sys/block/nvme0n1/queue/iostats
#1741944253
cat /sys/block/nvme1n1/queue/iostats
#1741944652
ptyxis --help
#1741944666
man ptyxis
#1741944689
ptyxis -s
#1741944253
cat /sys/block/nvme1n1/queue/iostats
#1741944568
sudo iostat 
#1741944576
sudo iotop 
#1741944644
ptyxis --standalone
#1741948063
flatpak delete waterfox
#1741948069
flatpak remove waterfox
#1741948163
btop
#1741949101
sudo dnf update --refresh
#1741949211
sudo zfs-update 
#1741949218
sudo kernel-update 
#1741949250
exit
#1741951599
fastfetch 
#1741953843
top
#1741953874
btop
#1741944416
cat /sys/block/sda/queue/scheduler 
#1741944426
cat /sys/block/nvme0n1/queue/scheduler 
#1741944430
cat /sys/block/nvme1n1/queue/scheduler 
#1741944439
cat /sys/block/nvme1n1/queue/iostats
#1741944460
cat /sys/block/nvme1n1/queue/optimal_io_size 
#1741944472
cat /sys/block/nvme1n1/queue/rotational 
#1741944545
htop
#1741966986
sudo dnf install gpart
#1741966996
exit
#1741944069
grep "" /sys/block/*/queue/scheduler
#1741944108
sudo vim /etc/udev/rules.d/
#1741944122
sudo vim /etc/udev/rules.d/60-ioschedulers.rules
#1741944148
ls /sys/block/sdb/queue/iosched
#1741944172
ls /sys/block/sda/queue/iostats
#1741944185
ls /sys/block/sda/queue/
#1741944208
cat /sys/block/sdb/queue/iosched/fifo_batch
#1741944247
cat /sys/block/nvme0n1/queue/iostats
#1741944253
cat /sys/block/nvme1n1/queue/iostats
#1741944652
ptyxis --help
#1741944666
man ptyxis
#1741944689
ptyxis -s
#1741944253
cat /sys/block/nvme1n1/queue/iostats
#1741944568
sudo iostat 
#1741944576
sudo iotop 
#1741944644
ptyxis --standalone
#1741948063
flatpak delete waterfox
#1741948069
flatpak remove waterfox
#1741948163
btop
#1741949101
sudo dnf update --refresh
#1741949211
sudo zfs-update 
#1741949218
sudo kernel-update 
#1741951599
fastfetch 
#1741953843
top
#1741953874
btop
#1741944416
cat /sys/block/sda/queue/scheduler 
#1741944426
cat /sys/block/nvme0n1/queue/scheduler 
#1741944430
cat /sys/block/nvme1n1/queue/scheduler 
#1741944439
cat /sys/block/nvme1n1/queue/iostats
#1741944460
cat /sys/block/nvme1n1/queue/optimal_io_size 
#1741944472
cat /sys/block/nvme1n1/queue/rotational 
#1741944545
htop
#1741964168
ls
#1741964191
sudo dd if=FreeBSD-14.2-RELEASE-amd64-disc1.iso of=/dev/sda bs=1M status=progress
#1741964364
sync
#1741964954
sudo dnf install refind
#1741964970
sudo dnf install rEFInd
#1741965662
sudo refind-install --usedefault /dev/sda
#1741966008
sudo mkfs.vfat -F 32 /dev/sda
#1741966194
sudo dd if=FreeBSD-14.2-RELEASE-amd64-memstick.img of=/dev/sda bs=1M status=progress
#1741966361
sudo fdisk /dev/sda
#1741966654
sudo gdisk /dev/sda
#1741966941
sudo dnf install gpart
#1741967014
sudo gpart add -t freebsd -s 50G /dev/sda
#1741967042
gpart
#1741967083
sudo parted /dev/sda
#1741967208
lsblk 
#1741967218
sgdisk  /dev/sda
#1741967230
exit
#1741944460
cat /sys/block/nvme1n1/queue/optimal_io_size 
#1741944472
cat /sys/block/nvme1n1/queue/rotational 
#1741944545
htop
#1741964191
sudo dd if=FreeBSD-14.2-RELEASE-amd64-disc1.iso of=/dev/sda bs=1M status=progress
#1741964364
sync
#1741964954
sudo dnf install refind
#1741964970
sudo dnf install rEFInd
#1741966008
sudo mkfs.vfat -F 32 /dev/sda
#1741966194
sudo dd if=FreeBSD-14.2-RELEASE-amd64-memstick.img of=/dev/sda bs=1M status=progress
#1741966361
sudo fdisk /dev/sda
#1741966654
sudo gdisk /dev/sda
#1741966941
sudo dnf install gpart
#1741967014
sudo gpart add -t freebsd -s 50G /dev/sda
#1741967042
gpart
#1741967218
sgdisk  /dev/sda
#1741967230
exit
#1741967374
sgdisk -n 2:614401:+100G -t 2:bf00 /dev/sda
#1741967377
sudo sgdisk -n 2:614401:+100G -t 2:bf00 /dev/sda
#1741967383
sudo sgdisk -p /dev/sda
#1741967522
sudo refind-install --usedefault /dev/sda
#1741967562
sudo mkfs.vfat -F 32 /dev/sda1
#1741967565
sudo refind-install --usedefault /dev/sda1
#1741967582
sudo dd if=FreeBSD-14.2-RELEASE-amd64-memstick.img of=/dev/sda2 bs=1M status=progress
#1741970074
cd Downloads/
#1741970080
history |grep ventiy
#1741970090
sudo -i
#1741970112
history |grep Ventoy
#1741970118
history |grep ventoy
#1741970122
history |grep sh
#1741970191
sudo cfdisk /dev/sda
#1741970204
cfdisk /dev/sda
#1741970252
gparted 
#1741970401
sudo parted /dev/sda
#1741970447
sudo sgdisk
#1741970452
sudo sgdisk /dev/sda
#1741970479
sudo sgdisk -c /dev/sda
#1741970481
sudo sgdisk -v /dev/sda
#1741970509
sudo sgdisk --zap-all /dev/sda
#1741970523
gparted
#1741970614
tar -zxvf ventoy-1.1.05-linux.tar.gz 
#1741970619
cd ventoy-1.1.05/
#1741970625
lsblk 
#1741970636
sudo ./Ventoy2Disk.sh -i /dev/sda
#1741970655
ls
#1741970664
vim README 
#1741970712
./VentoyGUI.x86_64 
#1741972241
sudo dnf update --refresh
#1741972257
flatpak update
#1741972355
sudo dnf remove refind
#1741972367
sudo dnf remove rEFInd
#1741972380
sudo dnf autoremove 
#1741972420
mount
#1741972430
df -h
#1741972446
df -h ~/.config/libreoffice/
#1741972459
df -h /home/liviu/.config/libreoffice/
#1741972462
df -h /home/liviu/.config/libreoffice
#1741972478
df -h /home/liviu/.librewolf/
#1741972487
df -h /home/liviu/.cache/librewolf/
#1741972493
df -h /home/liviu/.cache/mozilla/
#1741972495
exit
#1741972478
df -h /home/liviu/.librewolf/
#1741972487
df -h /home/liviu/.cache/librewolf/
#1741972493
df -h /home/liviu/.cache/mozilla/
#1741972495
exit
#1741975271
sudo dnf update --refresh
#1741975286
sudo zfs-update 
#1741975291
sudo kernel-update 
#1741975311
cd /mnt/dev/
#1741975314
cd 
#1741975322
cd -
#1741975325
cd Jetbrains/
#1741975329
cd apps/
#1741975331
cd idea
#1741975332
ls
#1741975334
cd bin/
#1741975364
cd /mnt/dev/Jetbrains/apps/pycharm/bin
#1741975377
cd /mnt/dev/Jetbrains/apps/datagrip/bin
#1741975379
pwd
#1741972894
htop
#1741990102
sudo dnf update --refresh
#1741990120
sudo zfs-update 
#1741990127
sudo kernel-update 
#1742031413
sudo dnf update --refresh
#1742031515
sudo dnf autoremove 
#1742031525
sudo zfs-update 
#1742031532
sudo kernel-update 
#1742043282
history 
#1742043368
sudo zfs rollback zroot/home@2025-03-15-134300
#1742043718
vim userChrome.css
#1742044417
history 
#1742044475
cat .bashrc 
#1742044480
vim .bashrc 
#1742044681
source .bashrc 
#1742044685
exit
#1742045504
history 
#1742045524
history |grep snapshots
#1742045527
history |grep snapshot\
#1742045536
zfs list -t snapshot -o name,used,creation
#1742045583
sudo zfs snapshot zroot@2025-03-15-153000
#1742045588
zfs list -t snapshot -o name,used,creation
#1742045605
zfs list -t snapshot 
#1742050808
mount
#1742051373
sudo dnf update --refresh
#1742051400
sudo dnf install qemu
#1742051451
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-viewer     edk2-ovmf swtpm qemu-img guestfs-tools libosinfo tuned
#1742051490
sudo dnf install virtio-win
#1742051586
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
#1742051620
sudo dnf install intel-media-driver
#1742051652
sudo dnf install libva-nvidia-driver.{i686,x86_64}
#1742053884
btop
#1742054134
zpool iostat 
#1742054170
zpool iostat -c 1
#1742054173
zpool iostat -x 1
#1742054180
zpool iostat -n 1
#1742054748
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
#1742057313
btop
#1742057324
exit
#1742057909
history |grep net
#1742057935
sysctl net.ipv4.tcp_congestion_control
#1742058785
ls
#1742058802
mvn clean install
#1742058811
mvn clean install package
#1742059825
sudo dnf install postgresql postgresql-server
#1742059843
sudo postgresql-setup --initdb --unit postgresql
#1742059853
sudo systemctl start postgresql
#1742059861
sudo su - postgres
#1742060063
sudo systemctl restart postgresql
#1742060489
psql -d bobdenaut
#1742061048
exit
#1742060066
sudo su - postgres
#1742061059
exit
#1742061220
sudo su - postgres
#1742061283
sudo systemctl restart postgresql
#1742061286
sudo su - postgres
#1742061306
psql -d bobdenaut
#1742061325
sudo systemctl enable postgresql
#1742061342
ls -la /etc/systemd/system/multi-user.target.wants/
#1742061362
sensors
#1742061365
exit
#1742062250
zfs set logbias=throughput zroot
#1742062255
sudo zfs set logbias=throughput zroot
#1742062280
sysctl vfs.zfs.prefetch_disable=0
#1742062327
swapon 
#1742071807
sudo dnf update --refresh
#1742071825
sudo zfs-update 
#1742071831
sudo kernel-update 
#1742071839
exit
#1742073819
egrep -c '(vmx|svm)' /proc/cpuinfo
#1742073857
journalctl -u libvirtd
#1742073884
sudo dmesg
#1742073938
nvidia-smi
#1742077739
free -h
#1742077743
df -h
#1742077761
swapon 
#1742078709
free|awk '/^Mem:/{print $2}'
#1742078725
totalmem=$(free|awk '/^Mem:/{print $2}')
#1742080422
sudo dnf update --refresh
#1742050433
htop
#1742088272
man zpool
#1742088341
man zpool import
#1742088570
cd /
#1742088571
ls
#1742088581
ls var
#1742088584
ls var/tmp/
#1742088590
ls var/lib/
#1742088601
ls var/lib/libvirt/
#1742088629
ls var/lib/
#1742088639
ls var/lib/livesys/
#1742088687
man zfs create
#1742088796
zfs create -o mountpoint=/home/test zroot/home/test
#1742088800
sudo zfs create -o mountpoint=/home/test zroot/home/test
#1742088816
zfs list
#1742088821
ls /home/
#1742088825
ls /home/test/
#1742088830
cd /
#1742088833
zfs list
#1742088864
zfs destroy zroot/home/test
#1742088867
sudo zfs destroy zroot/home/test
#1742088870
zfs list
#1742089006
ls /dev/disk/by-id/
#1742089018
ls -l /dev/disk/by-id/
#1742089027
ll /dev/disk/by-id/
#1742089036
ls -d /dev/disk/by-id/
#1742089040
ls -f /dev/disk/by-id/
#1742089046
ls -l /dev/disk/by-id/
#1742089089
ls -la /dev/disk/by-path/
#1742089111
ls -la /dev/disk/by-path/pci-0000:00:0e.0-pci-10000:e1:00.0-nvme-1-part1
#1742089279
sudo -i
#1742091473
exit
#1742091530
gparted
#1742116280
sudo dnf update
#1742116596
sudo dnf update --refresh
#1742116614
sudo zfs-update 
#1742116621
sudo kernel-update 
#1742116673
sudo dnf autoremove 
#1742116710
flatpak update 
#1742116774
sudo flatpak update 
#1742116827
sudo dnf distro-sync
#1742116854
dnf history
#1742116896
vim
#1742117176
dnf history list
#1742117562
inxi -Fzx
#1742117724
sudo dnf update --refresh
#1742118307
sudo ufw status verbose
#1742119405
sudo zfs set l2arc_rebuild_enabled=true
#1742119423
sudo zfs set l2arc_rebuild_enabled=true zroot
#1742120856
history 
#1742121358
dd if=/dev/urandom of=/tmp/home.key bs=32 count=1 && chmod 600 /tmp/home.key
#1742121368
cat /tmp/home.key 
#1742121458
ls -lh /dev/disk/by-path/
#1742121465
lsblk 
#1742121790
mount
#1742121819
cat /proc/sys/vm/drop_caches
#1742121823
sudo cat /proc/sys/vm/drop_caches
#1742121832
sudo -i
#1742122094
lsblk --filter 'TYPE=="DISK"' -o NAME,PHY-SEC
#1742122102
lsblk --filter 'TYPE=="nvme"' -o NAME,PHY-SEC
#1742122108
lsblk -o NAME,PHY-SEC
#1742122114
lsblk 
#1742122124
lsblk --filter 'TYPE=="part"' -o NAME,PHY-SEC
#1742122174
zfs list -o name,mountpoint,canmount,encryption
#1742122394
hostid
#1742122453
zpool history zpool
#1742122456
zpool history zroot
#1742122464
sudo zpool history zroot
#1742122494
sudo zpool history zroot > /home/liviu/Documents/zfs_history
#1742122611
cat /etc/zfs/zed.d/zed.rc
#1742122618
vim /etc/zfs/zed.d/zed.rc
#1742124151
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name nvme
#1742124158
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name king
#1742124161
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name kingstone
#1742124163
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name kingston
#1742124166
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name 
#1742124176
ls /dev/disk/by-id/
#1742124184
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name KINGSTON
#1742124193
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name NVME
#1742124206
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name mICRON
#1742124211
find /dev/disk/by-id -maxdepth 1 -mindepth 1 -name Micron
#1742124317
ls -la /dev/disk/by-id
#1742124484
ls -la /dev/disk/by-path/
#1742124488
ls -la /dev/disk/by-id
#1742124524
ls -la /dev/disk/by-id/nvme-eui.000000000000000100a075223c6886ae-part1 
#1742124660
ls /var/snap
#1742124663
ls /var/
#1742124676
ls /var/spool/
#1742124690
ls /var/www/
#1742124790
echo "ubuntu.$(date +%Y.%m.%d)"
#1742124942
zsysctl show --full
#1742124952
dnf search zsysctl
#1742125080
ls /run/systemd/generator/*.mount
#1742125096
ls -l /run/systemd/generator/*.mount
#1742125108
cat /run/systemd/generator/boot-efi.mount 
#1742125127
cat /run/systemd/generator/run-user-1000.mount 
#1742125863
vainfo
#1742126044
gdisk -l
#1742126055
gdisk -l /dev/nvme0n1
#1742126061
sudo gdisk -l /dev/nvme0n1
#1742126083
sudo gdisk -l /dev/nvme1n1
#1742126443
zfs list -r -o name,canmount,mountpoint rpool/var
#1742126451
zfs list -r -o name,canmount,mountpoint rpool/
#1742126453
zfs list -r -o name,canmount,mountpoint rpool
#1742126459
zfs list -r -o name,canmount,mountpoint zroot
#1742127490
zfs list -r -o name,canmount,mountpoint 
#1742127643
ls -l /run/systemd/generator/*.mount
#1742127651
cat /run/systemd/generator/run-user-1000.mount 
#1742128326
cat /etc/kernel/cmdline 
#1742130610
history 
#1742130619
history |grep sudo zfs
#1742130625
history |grep -i "sudo zfs"
#1742130862
watch -n 1 "cat /proc/spl/kstat/zfs/arcstats | grep -E '^(size|c_max|p)'"
#1742131094
sudo zpool set autotrim=on zroot
#1742131140
sudo dnf search zfs-auto-snapshot
#1742131144
sudo dnf search zfs-auto
#1742131148
sudo dnf search zfs
#1742131250
zpool list -H -o name
#1742131275
zpool status $POOL | grep -E '(DEGRADED|FAULTED|OFFLINE|UNAVAIL|REMOVED|FAIL|DESTROYED|corrupt|cannot|unrecover)'
#1742131287
zpool status zdev | grep -E '(DEGRADED|FAULTED|OFFLINE|UNAVAIL|REMOVED|FAIL|DESTROYED|corrupt|cannot|unrecover)'
#1742131315
zpool status $POOL | grep scrub | awk '{print $1}'
#1742131327
zpool status zdev | grep scrub | awk '{print $1}'
#1742131401
zpool status zroot | grep scrub | awk '{print $1}'
#1742131416
zpool list -H -o capacity zdev
#1742131420
zpool list -H -o capacity zroot
#1742131444
zpool status -v zroot
#1742131467
zpool scrub zdev
#1742131472
sudo zpool scrub zdev
#1742131483
zpool status zdev | grep scrub | awk '{print $1}'
#1742131495
zpool status zdev | grep scrub
#1742131505
sudo zpool scrub zroot
#1742131515
zpool status zroot | grep scrub
#1742131542
zpool iostat -v 5
#1742131559
sudo iotop -o
#1742132116
sudo dnf install libva-utils
#1742132127
vainfo 
#1742132200
sudo dnf install nvidia-vaapi-driver
#1742132224
sudo dnf swap ffmpeg-free ffmpeg --allowerasing
#1742132247
sudo dnf groupupdate multimedia
#1742132252
sudo dnf group update multimedia
#1742132255
sudo dnf groupupdate multimedia
#1742132282
sudo dnf update multimedia
#1742132287
sudo dnf groupupdate multimedia
#1742132307
nvtop 
#1742133292
zfs get recordsize,logbias,compression rpool
#1742133299
zfs get recordsize,logbias,compression zroot
#1742133600
sudo dnf update --refresh
#1742134084
history |grep history
#1742134096
sudo zpool history zroot|more
#1742134273
ls -la /opt
#1742134278
tree /opt/
#1742134299
ls -la /opt
#1742134304
tree /
#1742134315
tree /home
#1742134334
tree /boot
#1742134358
sudo tree /boot
#1742134456
sudo tree /var/spool/
#1742134468
sudo tree /var/spool/plymouth/
#1742135133
lsblk 
#1742135209
diff Documents/zfs-fedora41.sh Documents/fedora/zfs-fedora41.sh 
#1742135679
history |grep zfs-settings
#1742135684
history |grep settings
#1742135742
sudo zfs get all zroot > Documents/fedora/zfs\ settings/zfs_settings.txt 
#1742135791
sudo zfs get all zdev > Documents/fedora/zfs\ settings/zfs_zdev_settings.txt 
#1742136223
mount |grep "/usr/tmp"
#1742136228
mount |grep "/usr"
#1742136232
mount |grep -i "/usr"
#1742136235
mount |grep -E "/usr"
#1742136237
mount
#1742136247
mount |grep tmpfs
#1742136260
df -h
#1742137064
ls -la /var
#1742137077
ls -la /var/www
#1742137086
mount|grep tmp
#1742137103
mount|grep tmpfs
#1742137114
ls -la /var/tmp
#1742137122
ls -la /var/
#1742137132
df -h
#1742137179
mount|grep var
#1742137190
mount|grep tmpfs
#1742137857
man zfs mount
#1742137959
history |grep sync
#1742137977
history |grep all
#1742137990
sudo zfs get all zroot|grep sync
#1742138004
history |grep standard
#1742138011
sudo -i
#1742138037
sudo zfs get all zroot|grep sync
#1742138045
sudo zfs get all zdev|grep sync
#1742138062
history |grep sync
#1742138178
sudo zfs set sync=standard zroot/home
#1742138186
sudo zfs set sync=standard zroot
#1742138988
history |grep recordsize
#1742139001
zfs get compression,compressratio,recordsize zroot
#1742139487
history |grep recordsize
#1742139498
sudo zfs get all zroot|grep primarycache
#1742139516
sudo zfs get all zroot|grep secondarycache
#1742139883
lscpu | grep -i flags
#1742139889
lscpu | grep -i flags|grep fletch
#1742139920
cat /proc/spl/kstat/zfs/fletcher_4_bench
#1742139985
sudo zfs get all zroot|grep checksum
#1742140029
sudo zfs get checksum zroot
#1742140058
cat /proc/spl/kstat/zfs/fletcher_4_bench
#1742140576
sudo zfs set checksum=fletcher4 zroot
#1742141156
history |grep arc
#1742141200
cat /etc/modprobe.d/zfs_arc.conf
#1742141520
dnf search lunar
#1742141528
dnf search lunarg
#1742141553
sudo dmesg|grep pnp
#1742141580
sudo dmesg|grep -i pnp
#1742130597
htop
#1742141901
atop
#1742141992
sudo dnf install netatop
#1742142007
sudo dnf search netatop
#1742142011
atop
#1742142067
atopgpud
#1742142073
sudo dnf search atopgpud
#1742142078
atop
#1742142087
sudo atop
#1742142119
btop
#1742142252
rpm -qa | grep ^kernel
#1742142562
sudo dnf search grub
#1742142582
rpm -qa | grep ^kernel
#1742142760
rpm -qa | grep kernel-devel
#1742142778
sudo dnf remove kernel-devel-6.11.4-301.fc41.x86_64
#1742142811
sudo dnf remove kernel-devel-6.13.5-200.fc41.x86_64
#1742142829
sudo dnf autoremove 
#1742142834
rpm -qa | grep ^kernel
#1742142855
rpm -qa | grep ^kernel-devel
#1742143684
sudo dnf update --refresh
#1742144010
zdb 
#1742150546
lsblk -pf
#1742150554
lsblk -p
#1742150673
df -h
#1742150764
ls -la /var/lib/libvirt/images/
#1742150770
ls -lah /var/lib/libvirt/images/
#1742150778
df -h
#1742150899
ls -lah /var/lib/libvirt/images/
#1742150913
sudo rm  /var/lib/libvirt/images/fedora41-*
#1742150920
df -h
#1742153087
ls -la /usr/share/edk2.git/ovmf-x64/OVMF_CODE-pure-efi.fd
#1742153199
ls -la /usr/share/edk2/ovmf/OVMF_VARS_4M.secboot.qcow2
#1742153208
ls -la /usr/share/edk2/ovmf/OVMF_VARS_4M.qcow2 
#1742155025
df -h
#1742156245
sudo dmesg
#1742156271
journalctl 
#1742156456
psd p
#1742156483
df -h
#1742158032
history |grep ignore
#1742150217
htop
#1742158038
sudo -i
#1742158979
dnf search fwupd
#1742159915
htop
#1742159924
df -h
#1742161504
htop
#1742162018
cat /etc/resolv.conf 
#1742162046
ip a
#1742162052
cat /etc/resolv.conf 
#1742162248
mc
#1742162378
sudo -i
#1742164489
inxi -Fzxx
#1742164629
nvidia-smi 
#1742164781
sudo dnf upgrade --refresh
#1742165322
vainfo
#1742167209
htop
#1742167259
btop
#1742172602
zfs list
#1742173598
df -h
#1742173607
zfs list
#1742173613
zfs list -t
#1742173618
zfs list -t snapshot
#1742173653
sudo dnf update --refresh
#1742173670
htop
#1742193755
mount
#1742193791
sudo dnf update --refresh
#1742193812
sudo zfs-update 
#1742193818
sudo kernel-update 
#1742194281
flatpak update
#1742194508
zfs list
#1742194516
zfs list -t snapshot
#1742194548
history|grep snapshot
#1742194574
zfs list -t snapshot
#1742194595
sudo zfs snapshot -r zroot@zroot_recursive
#1742194601
zfs list -t snapshot
#1742194614
ls -la /.zfs/
#1742194619
ls -la /.zfs/snapshot/
#1742194623
ls -la /.zfs/snapshot/zroot_recursive/
#1742194627
zfs list -t snapshot
#1742194674
sudo zfs destroy zroot@zroot_recursive
#1742194690
sudo zfs snapshot -r zroot/ROOT/fedora@zroot_recursive
#1742194701
sudo zfs destroy zroot@zroot_recursive
#1742194707
sudo zfs snapshot -r zroot/ROOT/fedora@zroot_recursive
#1742194712
sudo zfs snapshot -r zroot/ROOT/fedora@zroot_rec
#1742194716
zfs list -t snapshot
#1742194742
sudo zfs destroy zroot@zroot_recursive
#1742194768
sudo zfs destroy zroot/home@zroot_recursive zroot/ROOT/fedora@zroot_rec zroot/ROOT/fedora@zroot_recursive
#1742194775
sudo zfs destroy zroot/home@zroot_recursive
#1742194789
sudo zfs destroy zroot/ROOT/fedora@zroot_rec
#1742194792
zfs list -t snapshot
#1742194805
sudo zfs destroy zroot/ROOT/fedora@zroot_recursive
#1742194819
sudo zfs destroy zroot/ROOT@zroot_recursive\
#1742194823
zfs list -t snapshot
#1742194828
zfs list -t snapsh
#1742194837
zfs list -t snapshot
#1742194847
sudo zfs destroy zroot/home/cache@zroot_recursive
#1742194849
zfs list -t snapshot
#1742194882
sudo zfs snapshot -r zroot/ROOT/fedora@zroot_rec
#1742194885
zfs list -t snapshot
#1742194957
mc
#1742195017
zfs list -t snapshot
#1742195041
sudo zfs snapshot -r zroot@zroot_rec
#1742195045
sudo zfs snapshot -r zroot@zroot_rec1
#1742195056
zfs list -t snapshot
#1742195063
mc
#1742195122
zfs list -t snapshot
#1742195171
ls -la /.zfs/snapshot/zroot_rec1/home/
#1742195186
zfs list -t snapshot
#1742195192
mc
#1742195260
zfs list -t snapshot
#1742195307
sudo zfs destroy zroot/home/cache@zroot_rec1
#1742195309
zfs list -t snapshot
#1742195329
sudo zfs destroy @zroot_rec1
#1742195334
sudo zfs destroy zroot_rec1
#1742195345
sudo zfs destroy zroot/home@zroot_rec1
#1742195355
sudo zfs destroy zroot/ROOT/fedora@zroot_rec1
#1742195356
sudo zfs destroy zroot/ROOT/fedora@zroot_rec
#1742195366
sudo zfs destroy zroot/ROOT@zroot_rec1 
#1742195373
sudo zfs destroy zroot@zroot_rec1
#1742195377
zfs list -t snapshot
#1742195435
sudo zfs snapshot -r zroot/ROOT/fedora@2025-03-17-0910-rec
#1742195436
zfs list -t snapshot
#1742195545
sudo zfs snapshot -r zroot@2025-03-17-0910-rec_all
#1742195546
zfs list -t snapshot
#1742195559
sudo zfs destroy zroot/home/cache@2025-03-17-0910-rec_all
#1742195561
zfs list -t snapshot
#1742195576
sudo zfs destroy zroot/ROOT/fedora@2025-03-17-0910-rec
#1742195579
zfs list -t snapshot
#1742196913
fastfetch 
#1742197540
sudo dnf update --refresh
#1742198198
zpool get listsnapshots zroot
#1742198245
sudo zpool set listsnapshots=on zroot
#1742198252
zpool get listsnapshots zroot
#1742198257
zfs list -t snapshot
#1742198307
zfs list 
#1742198331
zfs list zroot
#1742198335
zfs list zroot/home
#1742198350
zfs list all
#1742198353
zfs list 
#1742198380
zfs list -t snapshot 
#1742198391
zfs list -t snapshot zroot
#1742198416
zfs list -t snapshot zroot/home
#1742198455
zfs list 
#1742198459
man zfs list 
#1742198468
zfs list -r
#1742198471
man zfs list 
#1742198485
zfs list -t fs
#1742198550
sudo zpool set listsnapshots=off zroot
#1742198557
zfs list 
#1742198565
zfs list -t fs
#1742198568
zfs list -t snapshot 
#1742198826
cd /
#1742198828
tree
#1742198917
ls -la /
#1742198884
btop
#1742199660
history |grep vacum
#1742199662
history |grep vacumm
#1742199666
history |grep -i vacum
#1742199671
sudo -
#1742199680
sudo -i
#1742199850
sudo journalctl --flush
#1742199864
sudo journalctl --vacuum-size=10M
#1742199878
sudo journalctl --vacuum-time=2d
#1742200857
btop
#1742204424
man zfs create
#1742205067
uptime 
#1742205102
ls -la /dev/disk/by-id/
#1742205552
sudo dnf clean all
#1742205572
sudo dnf system-upgrade clean
#1742205580
sudo dnf autoremove 
#1742205587
sudo dnf update --refresh
#1742205673
sudo zfs-update 
#1742205679
sudo kernel-update 
#1742205682
sudo dnf update --refresh
#1742205706
history 
#1742205711
history |grep 512
#1742206105
du -sh /var/log
#1742206111
sudo du -sh /var/log
#1742206118
sudo du -s /var/log
#1742206123
sudo du -shr /var/log
#1742206127
sudo du -sh /var/log
#1742206136
tree /var/log
#1742206316
cd
#1742206344
fio --name=test --filename=/zroot/home/testfile     --size=1G --rw=randrw --rwmixread=70     --bs=128K --ioengine=posixaio     --numjobs=4 --runtime=30s --group_reporting
#1742206536
AVG_BS=$(find /var/log -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}')
#1742206554
AVG_BS=$(find /home/liviu -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}')
#1742206566
echo $AVG_BS
#1742206686
sudo zfs set recordsize=128K zroot/home
#1742206706
echo AVG_BS=$(find /home/liviu -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}')
#1742206713
sudo -i
#1742207181
sudo zfs set recordsize=512K zroot
#1742207202
sudo echo find /home -type f -not -path "/proc/*" -not -path "/sys/*" -not -path "/dev/*" -not -path "/run/*" -exec stat --format="%s" {} + 2>/dev/null | awk '{total+=$1; count++} END {if(count>0) print int(total/count/1024)"K"; else print "No files found"}'
#1742207211
sudo echo find /home/liviu -type f -not -path "/proc/*" -not -path "/sys/*" -not -path "/dev/*" -not -path "/run/*" -exec stat --format="%s" {} + 2>/dev/null | awk '{total+=$1; count++} END {if(count>0) print int(total/count/1024)"K"; else print "No files found"}'
#1742207223
echo AVG_BS=$(find /home/liviu -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}')
#1742207281
find /home -type f -path "*/.zfs/*" -or -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}'
#1742207299
find /home/liviu -type f -path "*/.zfs/*" -or -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}'
#1742207333
zfs list
#1742207344
history |grep "zfs list"
#1742207358
zfs list -t snapshot -o name,used,creation
#1742207382
zfs list
#1742207469
mc
#1742207490
sudo zfs destroy zroot@2025-03-13-074600-post-kernel6.13.6
#1742207500
sudo zfs destroy zroot@2025-03-15-153000
#1742207509
sudo zfs destroy zroot@2025-03-17-0910-rec_all
#1742207512
zfs list
#1742207515
zfs list -t snapshot 
#1742207538
sudo zfs destroy zroot/ROOT@2025-03-17-0910-rec_all 
#1742207540
zfs list -t snapshot 
#1742210306
vdpauinfo
#1742210319
mpv
#1742212283
sudo dnf search cockpit
#1742212303
sudo dnf search cockpit-zfs
#1742212320
sudo dnf search cockpit-manager
#1742212330
sudo dnf search zfs
#1742212350
sudo dnf update
#1742212523
df -h
#1742212551
history 
#1742212564
sudo -i
#1742212577
history 
#1742212604
sudo zfs get recordsize zroot
#1742212666
sudo zfs get recordsize zroot/home
#1742212709
btop
#1742213460
nvidia-smi 
#1742213474
nvtop 
#1742213512
exit
#1742213718
btop
#1742214557
sudo systemctl status zfs-import-cache.service 
#1742214582
sudo systemctl status zfs-mount.service 
#1742214596
sudo systemctl status zfs-trim@rpool.service 
#1742214606
sudo systemctl status zfs-trim-weekly@rpool.timer 
#1742214621
sudo systemctl status zfs-volume
#1742214625
sudo systemctl status zfs-volumes.target 
#1742214634
sudo systemctl enable  zfs-volumes.target 
#1742214636
sudo systemctl status zfs-volumes.target 
#1742214649
cat /usr/lib/systemd/system/zfs-volumes.target
#1742214662
sudo systemctl status zfs-volumes.target 
#1742214672
cat /usr/lib/systemd/system/zfs-volumes.target
#1742214679
sudo systemctl disable zfs-volumes.target 
#1742214689
sudo systemctl status zfs-zed.service 
#1742214695
btop
#1742216949
zfs get compression
#1742216964
zfs get compressratio
#1742217719
btop
#1742218822
history 
#1742218838
find /mnt/dev -type f -path "*/.zfs/*" -or -type f -printf "%s\n" | awk '{total+=$1; count++} END {print int(total/count/1024)"K"}'
#1742218866
sudo zfs set recordsize=512K zdev
#1742218952
history |grep maven
#1742218956
history |grep mvn
#1742218964
mvn dependency:purge-local-repository
#1742218981
mvn clean
#1742218983
mvn dependency:resolve
#1742218988
history |grep mvn
#1742218995
mvn clean install -X
#1742218999
mvn dependency:purge-local-repository
#1742219054
btop
#1742219308
sudo rpmkeys --import pubkey.gpg
#1742219327
history |grep yum
#1742219339
sudo vim /etc/yum.repos.d/librewolf.repo 
#1742219360
sudo dnf update librewolf
#1742219368
sudo dnf update --refresh
#1742222250
sysctl -n vfs.zfs.txg.timeout
#1742222368
cd
#1742222369
ls
#1742222375
chmod u+x test.sh 
#1742222377
./test.sh 
#1742222718
cat test.sh 
#1742222730
vim test.sh 
#1742222758
./test.sh 
#1742222820
zfs get recordsize zpool/home
#1742222824
zfs get recordsize home
#1742222829
zfs get recordsize zpool
#1742222846
zfs get recordsize zpool zpoo/home
#1742222850
zfs get recordsize zpool zpool/home
#1742222860
zfs get recordsize zroot/home
#1742223050
zfs set recordsize=64k zroot/home
#1742223053
sudo zfs set recordsize=64k zroot/home
#1742223062
./test.sh 
#1742223194
sudo zfs set recordsize=15k zroot/home
#1742223206
sudo zfs set recordsize=512k zroot/home
#1742223208
ls
#1742223213
./test.sh 
#1742223386
sudo zfs set recordsize=128k zroot/home
#1742223397
sudo zfs get compress zroot/home
#1742223415
./test.sh 
#1742223499
cat test.sh 
#1742223884
sysctl -a | grep vfs.zfs.txg.timeout
#1742223888
sudo sysctl -a | grep vfs.zfs.txg.timeout
#1742223914
cat /sys/module/zfs/parameters/*
#1742223950
cat /sys/module/zfs/parameters/*|grep zfs
#1742223958
cat /etc/zfs/zpool.cache
#1742224042
cd Documents/
#1742224043
ls
#1742224044
cd fedora/
#1742224046
cat test.sh 
#1742224074
vim test.sh 
#1742224127
./test.sh 
#1742224370
sudo zfs set recordsize=512k zroot/home
#1742224375
./test.sh 
#1742224655
sudo zfs set recordsize=128k zroot/home
#1742224811
cat /boot/loader.conf
#1742224892
cat /etc/sysctl.conf 
#1742224901
sudo vim /etc/sysctl.conf 
#1742224974
sysctl -n vfs.zfs.txg.timeout
#1742225232
sudo vim /etc/sysctl.conf 
#1742225321
exit
#1742225886
sudo zfs get blocksize zroot/home 
#1742225901
sudo zfs get all zroot/home |grep block
#1742225910
sudo zfs get all zroot/home |grep -i block
#1742225915
sudo zfs get all zroot |grep -i block
#1742225945
zpool get all
#1742225950
zpool get all|grep block
#1742225960
zpool get all|grep -i block
#1742225978
zpool get all|grep -i record
#1742225989
sudo zfs get all zroot |grep -i block
#1742225993
sudo zfs get all zroot |grep -i record
#1742226026
sudo zfs get all zroot/home |grep -i record
#1742195846
htop
#1742226188
df -h
#1742231835
sudo dnf install libdnf5-plugin-actions
#1742231857
history 
#1742231896
cd Documents/fedora/
#1742231898
cat test.sh 
#1742231906
sysctl -n vfs.zfs.txg.timeout
#1742231914
sysctl -n vfs.zfs.txg
#1742231935
cat test.sh 
#1742231947
history 
#1742231980
cd /etc/sysctl.d/
#1742231981
ls
#1742231985
cat 99-sysctl.conf 
#1742232285
arc_summary
#1742232301
cat 99-sysctl.conf 
#1742232310
arc_summary|grep timeout
#1742232860
modinfo zfs | grep zfs_txg_timeout
#1742232887
arc_summary|grep timeout
#1742232916
cd /etc/modprobe.d
#1742232923
ls
#1742232932
cat zfs_arc.conf 
#1742233048
history 
#1742233062
arc_summary |grep dirty_data_sync_pct
#1742233067
arc_summary |grep dirty_data
#1742232982
sudo vim zfs_arc.conf 
#1742233610
sudo dracut -f
#1742231957
sudo vim /etc/sysctl.conf
#1742233643
exit
#1742233669
sysctl vfs.zfs.trim
#1742233785
history 
#1742233799
sysctl vfs.zfs.trim
#1742233825
modinfo zfs | grep zfs_txg_timeout
#1742233840
sysctl -n vfs.zfs.txg.timeout
#1742233855
cat /etc/dracut.conf.d/modprobe_files.conf 
#1742233880
cat /etc/modprobe.d/zfs_arc.conf
#1742233919
sysctl -n vfs.zfs.txg.timeout
#1742234106
ls -la /boot/
#1742234138
ls -lat /boot/
#1742234161
df -h
#1742234458
sudo dnf update --refresh
#1742234479
flatpak update
#1742234710
sudo dmesg
#1742234728
sudo dmesg|grep zfs
#1742234762
cd /etc/modprobe.d
#1742234768
sudo vim zfs_arc.conf 
#1742234810
sudo dracut -f
#1742234822
sudo vim zfs_arc.conf 
#1742234836
sudo dracut -f
#1742234859
sudo vim zfs_arc.conf 
#1742235035
cat /sys/module/icp/parameters
#1742235044
history 
#1742235053
modinfo zfs | grep zfs_txg_timeout
#1742235060
cat zfs_arc.conf 
#1742235075
modinfo zfs | grep vfs.zfs.dirty_data_sync_pc
#1742235086
modinfo zfs | grep vfs.zfs.vdev.write_gap_limit
#1742235096
modinfo zfs | grep vfs.zfs.txg.timeout
#1742235111
modinfo vfs | grep vfs.zfs.txg.timeout
#1742235118
sudo vim zfs_arc.conf 
#1742235144
sudo dracut -f
#1742235246
arc_summary |grep vfs.zfs.txg.timeout
#1742235249
arc_summary |grep timeout
#1742235281
arc_summary |grep write_gap_limit
#1742235326
cd /etc/modprobe.d/
#1742235393
arc_summary |grep dirty_data_sync_pct
#1742235397
arc_summary |grep dirty_data
#1742235445
arc_summary |grep timeout
#1742235486
arc_summary |grep txg_delay
#1742235489
arc_summary |grep delay
#1742235529
arc_summary |grep queue_depth
#1742235331
sudo vim zfs_arc.conf 
#1742235599
sudo dracut -f
#1742235650
cat vim zfs_arc.conf 
#1742235801
sudo dmesg
#1742235813
sudo dmesg|grep -i zfs
#1742235823
arc_summary |grep queue_depth
#1742235828
arc_summary |grep txg_delay
#1742235832
arc_summary |grep delay
#1742235837
arc_summary
#1742235940
cat /sys/module/zfs/parameters/zfs_txg_timeout
#1742235947
cd Documents/
#1742235948
cd fedora/
#1742235971
modinfo -p zfs
#1742235951
vim test.sh 
#1742236049
./test.sh 
#1742236057
ls
#1742236064
rm test.tmp 
#1742236065
ls
#1742236097
cat /etc/modprobe.d/zfs_arc.conf 
#1742236113
sysctl -n zfs_txg_timeout
#1742236165
modinfo -p zfs|grep zfs_txg_timeout
#1742236198
sysctl 
#1742236202
sysctl -a
#1742236207
sysctl -a|grep zfs_txg_timeout
#1742236211
sudo sysctl -a|grep zfs_txg_timeout
#1742236220
sudo sysctl -a|grep timeout
#1742236284
cd /sys/module/zfs/parameters/
#1742236285
ls
#1742236315
cat zfs_txg_timeout 
#1742236352
cat /sys/module/zfs/parameters/zfs_txg_timeout 
#1742236077
vim test.sh 
#1742236386
ST=`cat /sys/module/zfs/parameters/zfs_txg_timeout`
#1742236386
ST=`expr $ST + 1`
#1742236392
echo $ST
#1742236397
./test.sh 
#1742236540
ls
#1742236544
rm test.tmp 
#1742236564
arc_summary 
#1742236666
sudo sysctl -w vfs.zfs.txg.timeout=20
#1742236686
sudo sysctl -w zfs_txg_timeout=20
#1742236737
sudo cat /sys/module/zfs/parameters/zfs_txg_timeout 
#1742236752
sudo vim /sys/module/zfs/parameters/zfs_txg_timeout 
#1742236764
sudo echo 20 > /sys/module/zfs/parameters/zfs_txg_timeout 
#1742236804
sudo vim /etc/modprobe.d/zfs_arc.conf 
#1742236850
sudo zpool iostat -n 1
#1742236870
sudo dracut -f
#1742235849
htop
#1742236616
vim test.sh 
#1742236907
exit
#1742237017
cd Documents/fedora/
#1742237019
cat test.sh 
#1742237025
cat /sys/module/zfs/parameters/zfs_txg_timeout
#1742237030
history 
#1742237063
sudo zfs get recordsize zroot/home
#1742237367
sudo zfs get atime zroot/home
#1742237392
sudo zfs get primarycache zroot/home
#1742237401
sudo zfs get secondarycache zroot/home
#1742237519
sudo zfs set secondarycache=all zroot
#1742237530
sudo zfs get secondarycache zroot/home
#1742237078
./test.sh 
#1742237806
ls -l | gawk '{sum += $5; n++;} END {print sum/n;}'
#1742237812
cd ..
#1742237813
ls
#1742237902
ls -l | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742237912
cd liviu/
#1742237914
ls -l | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742237933
pwd
#1742237936
ls -l | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742238002
ls -l /tmp | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742238012
ls -l /var/log | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742238074
ls -l /var/lib/libvirt/ | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742238084
ls -l /var/lib/libvirt/images/ | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024;}' 
#1742238132
ls -l /var/lib/libvirt/images/ | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024; print "MB: " sum/n/1024/1024;}'
#1742238159
ls -l /var/lib/libvirt/images/ | gawk '{sum += $5; n++;} END {print "Bytes: " sum/n; print "KB: " sum/n/1024; print "MB: " sum/n/1024/1024; print "GiB: " sum/n/1024/1024/1024;}'
#1742238207
ls -l /var/lib/libvirt/images/ | gawk '{sum += $5; n++;} END {printf "Bytes: %.0f\n", sum/n; printf "KB: %.0f\n", sum/n/1024; printf "MB: %.0f\n", sum/n/1024/1024; printf "GiB: %.2f\n", sum/n/1024/1024/1024;}'
#1742238222
ls -lr /var/lib/libvirt/images/ | gawk '{sum += $5; n++;} END {printf "Bytes: %.0f\n", sum/n; printf "KB: %.0f\n", sum/n/1024; printf "MB: %.0f\n", sum/n/1024/1024; printf "GiB: %.2f\n", sum/n/1024/1024/1024;}'
#1742238231
ls -lr /var/lib | gawk '{sum += $5; n++;} END {printf "Bytes: %.0f\n", sum/n; printf "KB: %.0f\n", sum/n/1024; printf "MB: %.0f\n", sum/n/1024/1024; printf "GiB: %.2f\n", sum/n/1024/1024/1024;}'
#1742238238
ls -lR /var/lib | gawk '{sum += $5; n++;} END {printf "Bytes: %.0f\n", sum/n; printf "KB: %.0f\n", sum/n/1024; printf "MB: %.0f\n", sum/n/1024/1024; printf "GiB: %.2f\n", sum/n/1024/1024/1024;}'
#1742238251
sudo ls -lR /var/lib | gawk '{sum += $5; n++;} END {printf "Bytes: %.0f\n", sum/n; printf "KB: %.0f\n", sum/n/1024; printf "MB: %.0f\n", sum/n/1024/1024; printf "GiB: %.2f\n", sum/n/1024/1024/1024;}'
#1742238366
sudo ls -lR /var | gawk '{sum += $5; n++;} END {print "Bytes: " sum; print "KB: " sum/1024; print "MB: " sum/1024/1024; print "GiB: " sum/1024/1024/1024;}'
#1742238419
ls -lR /var | awk '{sum += $5; n++;} END {print "Bytes: " sum; print "KB: " sum/1024; print "MB: " sum/1024/1024; print "GiB: " sum/1024/1024/1024;}' | numfmt --to=iec
#1742238424
sudo ls -lR /var | awk '{sum += $5; n++;} END {print "Bytes: " sum; print "KB: " sum/1024; print "MB: " sum/1024/1024; print "GiB: " sum/1024/1024/1024;}' | numfmt --to=iec
#1742238485
sudo ls -lR /var | awk '{sum += $5; n++;} END {print "Bytes: " sum; print "KB: " sum/1024; print "MB: " sum/1024/1024; print "GiB: " sum/1024/1024/1024;}' 
#1742238536
sudo ls -lR /var | awk '{sum += $5} END {print "Bytes: " sum; print "KB: " sum/1024; print "MB: " sum/1024/1024; print "GiB: " sum/1024/1024/1024;}'
#1742238572
sudo sudo ls -lR /var | awk '{sum += $5} END {printf "Bytes: %d\n", sum; printf "KB: %.2f\n", sum/1024; printf "MB: %.2f\n", sum/1024/1024; printf "GiB: %.2f\n", sum/1024/1024/1024;}'
#1742238804
cd
#1742238808
vim .bashrc 
#1742238834
source .bashrc 
#1742238848
cd /var/www
#1742238849
ls
#1742238852
calcsize .
#1742238856
cd ..
#1742238858
cd mail/
#1742238860
calcsize .
#1742238862
cd /
#1742238864
ls
#1742238867
cd lib
#1742238870
calcsize .
#1742238878
cd /boot/
#1742238881
sudo calcsize .
#1742238895
cd
#1742238899
cat .bashrc 
#1742238907
sudo -i
#1742238948
cd /boot/
#1742238951
sudo calcsize .
#1742238967
calcsize .
#1742238980
sudo calcsize .
#1742238993
cat .bashr
#1742238997
cd
#1742239000
cat .bashrc 
#1742239025
cd /usr/local/bin/
#1742239026
ls
#1742239034
sudo vim calcsize.sh
#1742239052
ls
#1742239065
sudo chmod +x calcsize.sh 
#1742239067
ls -la
#1742239077
cd
#1742239080
vim .bashrc 
#1742239088
sudo -i
#1742239107
cd /boot/
#1742239116
sudo calcsize.sh 
#1742239121
sudo calcsize.sh .
#1742239132
cd
#1742239135
vim .bashrc 
#1742239169
source .bashrc 
#1742239170
cd /
#1742239178
calcs .
#1742239185
calcs /boot/
#1742239189
sudo calcs /boot/
#1742239191
cd
#1742239194
cat .bashrc 
#1742239201
sudo -i
#1742239222
cd /
#1742239231
sudo calcs /boot/
#1742239325
cd /usr/local/bin/
#1742239326
ls -la
#1742239333
sudo mv calcsize.sh calcs
#1742239337
ls -la
#1742239351
size 
#1742239354
ls
#1742239361
sudo -i
#1742239373
cd
#1742239376
vim .bashrc 
#1742239383
cd /
#1742239393
sudo calcs /boot
#1742239428
cd
#1742239431
calcs .
#1742239442
source .bashrc 
#1742239444
calcs .
#1742239457
cat .bashrc 
#1742239462
exit
#1742239466
exit
#1742239495
cd
#1742239497
calcs .
#1742239527
cat /usr/local/bin/calcs 
#1742239549
calcs .
#1742239701
ls -l -R . | awk '{sum += $5} END {printf "Bytes: %d\n", sum; printf "KB: %.2f\n", sum/1024; printf "MB: %.2f\n", sum/1024/1024; printf "GiB: %.2f\n", sum/1024/1024/1024;}'
#1742239870
sudi vim /usr/local/bin/calcs 
#1742239878
sudo vim /usr/local/bin/calcs
#1742239912
cd
#1742239915
calcs .
#1742239920
calcs -a .
#1742240218
cd
#1742240223
chmod u+x calcs2.sh 
#1742240230
./calcs2.sh .
#1742240239
./calcs2.sh -a .
#1742240499
./calcs2.sh -a ./Documents/
#1742240523
./calcs2.sh -a /home/
#1742240863
chmod u+x calcs3.sh 
#1742240869
./calcs3.sh .
#1742240874
./calcs3.sh -a .
#1742241052
clear
#1742241055
./calcs3.sh -a .
#1742241180
./calcs3.sh -a -v .
#1742241217
./calcs3.sh -v -a .
#1742241222
./calcs3.sh -a -v .
#1742241229
./calcs3.sh -av .
#1742241232
./calcs3.sh -a -v .
#1742241281
./calcs3.sh -a .
#1742241285
./calcs3.sh -a -v .
#1742241429
./calcs3.sh -a .
#1742241437
./calcs3.sh -a /var
#1742241444
sudo ./calcs3.sh -a /var
#1742241463
ls /var
#1742241477
sudo ./calcs3.sh -a /var/cache
#1742241480
ls /var/cache
#1742241485
ls /var/cache/dnf/
#1742241490
sudo ./calcs3.sh -a /var/cache/dnf
#1742241499
sudo ./calcs3.sh -a /var/
#1742241501
ls /var
#1742241506
ls /var/account/
#1742241512
sudo ./calcs3.sh -a /etc
#1742241532
sudo ./calcs3.sh -a -v /etc
#1742241542
sudo ./calcs3.sh -a /etc
#1742241552
sudo ./calcs3.sh -a .
#1742241566
calcs .
#1742241575
sudo ./calcs2.sh -a .
#1742241585
sudo ./calcs3.sh -a .
#1742241594
sudo ./calcs3.sh -a /etc
#1742241606
sudo ./calcs3.sh -a /var
#1742241842
sudo ./calcs3.sh -a .
#1742241853
sudo ./calcs3.sh .
#1742241923
cd
#1742241928
./calcs3.sh .
#1742241934
./calcs3.sh -a .
#1742241944
./calcs3.sh -a -v .
#1742242005
./calcs3.sh -a .
#1742242009
./calcs3.sh .
#1742242014
./calcs3.sh -a -v .
#1742242025
rm calcs3.sh 
#1742242027
rm calcs2.sh 
#1742242029
ls
#1742242072
calcs .
#1742242093
cat /usr/local/bin/calcs 
#1742242098
calcs .
#1742242101
calcs -a .
#1742242114
calcs -a /var
#1742242119
sudo calcs -a /var
#1742242163
du -sh /var
#1742242173
sudo du -sh /var
#1742242186
sudo du -s /var
#1742242188
sudo du -sh /var
#1742242216
sudo du -sh /
#1742242237
du -sh .
#1742242246
calcs -a .
#1742242481
sudo mv /usr/local/bin/calcs /usr/local/bin/avgs
#1742242811
sync
#1742242815
man sync
#1742243025
btop
#1742243661
cat /etc/fstab 
#1742243915
sudo systemctl stop postgresql.service 
#1742243926
sudo systemctl disable postgresql.service 
#1742243929
exit
#1742244564
avgs /mnt/dev/
#1742244570
avgs -a /mnt/dev/
#1742244586
avgs -a /mnt/dev/Jetbrains/
#1742244597
avgs /mnt/dev/Jetbrains/
#1742244603
avgs -a /mnt/dev/Jetbrains/
#1742244625
cat /usr/local/bin/avgs 
#1742244684
cd /mnt/dev/
#1742244688
cd Jetbrains/
#1742244690
find . -type f -printf "%s\t%p\n" |    awk 'max<$1{max=$1}
             {sum+=$1; c++}
          END{print "largest: "max; print "average: " sum/c}'
#1742244756
find . -type f -printf "%s\t%p\n" |    awk 'max<$1{max=$1}
             {sum+=$1; c++}
          END{print "largest: "max; print "average: " sum/1014/c}'
#1742244779
find . -type f -printf "%s\t%p\n" |    awk 'max<$1{max=$1}
             {sum+=$1; c++}
          END{print "largest: "max/1024; print "average: " sum/1024/c}'
#1742244843
find . -type f -printf '%b\n' | awk '{s+=$0}
  END {printf "Count: %u\nAverage size: %.2f\n", NR, s*512/NR}'
#1742244890
find . -type f -printf '%b\n' | awk '{s+=$0}
  END {printf "Count: %u\nAverage size: %.2f\n", NR, (s*512/NR)/1024}'
#1742244990
find . -type f -printf '%b\n' | awk '{s+=$0}
  END {printf "Count: %u\nAverage size: %.2f\n", NR, (s*512/NR)/1024}'
#1742245158
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245189
cat /usr/local/bin/avgs 
#1742245210
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245350
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %\'u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245359
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %\'u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245437
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245489
avgs .
#1742245492
avgs -a .
#1742245516
sudo vim /usr/local/bin/avgs 
#1742245546
avgs .
#1742245551
cd
#1742245553
avgs .
#1742245623
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245644
cd /mnt/dev
#1742245647
find . -type f -printf '%b\n' | awk '{s+=$0} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s*512/NR)/1024, (s*512/NR)/1024/1024}'
#1742245660
avgs .
#1742245686
find . -type f -exec du -b {} + | awk '{s+=$1} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s/NR)/1024, (s/NR)/1024/1024}'
#1742245699
cd
#1742245702
find . -type f -exec du -b {} + | awk '{s+=$1} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s/NR)/1024, (s/NR)/1024/1024}'
#1742245713
avgs .
#1742245730
cd -
#1742245732
find . -type f -exec du -b {} + | awk '{s+=$1} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", NR, (s/NR)/1024, (s/NR)/1024/1024}'
#1742245744
avgs .
#1742245781
find . -type f -printf '%b\n' | awk '{s+=$0; count++} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", count, (s*512/count)/1024, (s*512/count)/1024/1024}'
#1742245813
avgs .
#1742245816
find . -type f -printf '%b\n' | awk '{s+=$0; count++} 
  END {printf "Count: %'\''u\nAverage size: %.2f KB (%.2f MB)\n", count, (s*512/count)/1024, (s*512/count)/1024/1024}'
#1742245853
sudo rm /usr/local/bin/avgs 
#1742245946
btop
#1742246161
top
#1742246170
btop
#1742246223
top -o %MEM
#1742246253
top -o %CPU
#1742246286
history 
#1742246360
$ find . -name '*' -exec stat -c %n,%s {} \; | awk -F, '{sum+=$2}END{print sum}'
#1742246366
find . -name '*' -exec stat -c %n,%s {} \; | awk -F, '{sum+=$2}END{print sum}'
#1742246396
find . -name '*.pdf' -exec stat -c %s {} \; | awk '{sum+=$1}END{print sum}'
#1742246402
find . -name '*' -exec stat -c %s {} \; | awk '{sum+=$1}END{print sum}'
#1742246500
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR }'
#1742246529
cd /mnt/dev
#1742246531
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR }'
#1742246548
cd .m2/
#1742246549
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR }'
#1742246582
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR bytes}'
#1742246603
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: %s" sum/NR, "dd" }'
#1742246612
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: %s" sum/NR, "bytes" }'
#1742246618
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes" }'
#1742246665
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes\n" (sum/NR)\1024}'
#1742246681
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes\n";}'
#1742246725
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes\n";print "Avg: " (sum/NR)/1024, "kilo\n"}'
#1742246739
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes";print "Avg: " (sum/NR)/1024, "kilo"}'
#1742246747
cd ..
#1742246748
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes";print "Avg: " (sum/NR)/1024, "kilo"}'
#1742246769
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "bytes";print "Avg: " (sum/NR)/1024, "KB"}'
#1742246780
find . -type f -exec du '{}' '+' | awk '{ sum += $1 } END { print "Avg: " sum/NR, "B";print "Avg: " (sum/NR)/1024, "KB"}'
#1742246907
sudo vim /usr/local/bin/avg
#1742246934
sudo chmod +x /usr/local/bin/avg
#1742246942
cd /boot/
#1742246947
avg .
#1742246957
cd 
#1742246959
avg .
#1742248401
nvidia-smi 
#1742248409
nvtop 
#1742248427
exit
#1742247158
btop
#1742248845
df -h
#1742248860
df -h ~/.cache/librewolf/
#1742248867
mount|grep cache
#1742248885
df -h ~/.cache/librewolf/
#1742248892
sudo -sh ~/.cache/librewolf/
#1742248898
du -sh ~/.cache/librewolf/
#1742248906
du -sh ~/.cache/mozilla/
#1742248910
zfs list
#1742248970
sudo dnf update --refresh
#1742248984
sudo zfs-update 
#1742248991
sudo kernel-update 
#1742248994
exit
#1742249158
sudo dnf remove grub
#1742249220
ls /boot/
#1742249233
ll -a
#1742249237
ll -a /boot
#1742249245
ll  /boot
#1742249255
cat .bashrc 
#1742249500
alsamixer 
#1742249631
sudo systemctl status alsa-state.service 
#1742249645
sudo systemctl restart alsa-state.service 
#1742249680
sudo systemctl status alsa-state.service 
#1742249691
sudo systemctl restart alsa-state.service 
#1742249705
sudo systemctl status alsa-restore.service 
#1742249716
sudo systemctl restart alsa-restore.service 
#1742249729
alsactl 
#1742249734
alsa-info.sh 
#1742249756
sudo dmesg
#1742249769
sudo dmesg|grep sound
#1742249856
pipewire
#1742249867
pipewire-pulse 
#1742249883
pipewire-aes67 
#1742249905
pipewire-avb 
#1742249916
pipewire-vulkan 
#1742249922
pipewire
#1742249961
sudo systemctl status plymouth-start.service 
#1742250337
inxi --bluetooth
#1742250342
inxi --sound
#1742250347
inxi --snd
#1742250351
inxi 
#1742250365
inxi -F
#1742250402
PipeWire
#1742250409
pipewire
#1742250430
pipewire --help
#1742250438
pipewire -P
#1742250440
pipewire -p
#1742250447
pipewire -c
#1742250462
alsamixer 
#1742250648
grep limit /etc/dnf/dnf.conf
#1742250651
grep limit /etc/dnf/dnf.conf 
#1742250659
rpm -qa kernel\* | sort -V
#1742250691
rpm -qa kernel\6.11 | sort -V
#1742250695
rpm -qa kernel\6.11* | sort -V
#1742250700
rpm -qa kernel\*6.11* | sort -V
#1742250706
rpm -qa kernel\* | sort -V
#1742250802
sudo dnf remove kernel-6.11.4-301.fc41.x86_64
#1742250816
rpm -qa kernel\* | sort -V
#1742250825
sudo dnf remove kernel-6.11*
#1742250847
sudo dnf remove kernel-*6.11*
#1742250879
sudo dnf remove kmod-nvidia
#1742250884
sudo dnf remove kmod-nvidia*
#1742250899
sudo dnf remove kernel-*6.11*
#1742250940
ll /boot
#1742250959
sudo dnf remove kmod-nvidia*
#1742250981
sudo dnf remove kernel-*6.13.5*
#1742251001
sudo dnf remove kmod-nvidia*
#1742251032
sudo dnf remove kmod-nvidia-6.13.5-200.fc41.x86_64
#1742251063
sudo dnf remove kmod-nvidia*
#1742251089
sudo dnf update --refresh
#1742251110
sudo kernel-update 
#1742251121
ll /boot
#1742251154
sudo dnf remove kernel-*6.13.5*
#1742251206
ll /boot/
#1742251233
sudo kernel-update 
#1742251242
sudo dnf update --refresh
#1742251252
sudo zfs-update 
#1742251260
ll /boot/
#1742251265
ll /boot/efi/
#1742251268
ll /boot/efi/EFI/
#1742251271
ll /boot/efi/EFI/BOOT/
#1742251277
ll /boot/efi/EFI/fedora/
#1742251284
ll /boot/efi/EFI/ZBM/
#1742251288
ll /boot/efi/
#1742251292
ll /boot/efi/loader/
#1742251298
ll /boot/
#1742251306
ll /boot/extlinux/
#1742251310
ll /boot/
#1742251313
ll /boot/grub2/
#1742251740
systemctl --user list-unit-files "pipewire*"
#1742251755
systemctl --user list-unit-files
#1742251882
sudo systemctl status grub2-systemd-integration.service 
#1742251895
sudo systemctl status grub-boot-indeterminate.service 
#1742251915
sudo systemctl status grub-success
#1742251920
exit
#1742252261
zpool status
#1742252269
zpool list
#1742252278
zfs list
#1742252331
mount|greo cache
#1742252336
mount|grep cache
#1742252804
systemctl --user restart pipewire.service
#1742252828
systemctl --user status pipewire.service
#1742252836
systemctl --user start pipewire.service
#1742252866
systemctl --user stop pipewire.service
#1742252871
systemctl --user status pipewire.service
#1742252875
systemctl --user start pipewire.service
#1742253021
sudo dmesg
#1742253049
psd p
#1742253061
mount
#1742253237
sudo dmesg
#1742253311
grep fbdev /etc/modprobe.d/* /lib/modprobe.d/*
#1742253327
cat /lib/modprobe.d/50-nvidia-default.conf
#1742253494
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#1742253593
sudo dmesg|grep snd
#1742253603
sudo dmesg|grep -i snd
#1742253610
sudo dmesg|grep -i sound
#1742252311
htop
#1742282010
sudo dnf update --refresh
#1742282114
flatpak update
#1742282119
sudo flatpak update
#1742282131
appstreamcli --help
#1742282165
appstreamcli status
#1742282434
nvidia-smi 
#1742282583
btop
#1742282612
nvidia-smi 
#1742282693
ps axf
#1742282730
nvidia-smi 
#1742283193
nmap -p1-65535 192.168.124.40
#1742283210
nmap -p1-65535 localhost
#1742283228
nmap -p1-22 localhost
#1742283243
nmap -p1-443 localhost
#1742283256
man nmap
#1742283452
ip a
#1742283465
nmap -p1-65535 192.168.68.107
#1742283537
man llmnr
#1742283567
sudo systemctl status llmnr
#1742283611
sudo ufw deny llmnr
#1742283617
nmap -p1-65535 192.168.68.107
#1742283626
sudo ufw deny 5355
#1742283639
ps axf|grep llmnr
#1742283648
sudo ufw status verbose
#1742283667
sudo ufw deny out 5355
#1742283671
sudo ufw status verbose
#1742283791
ss -netulp | grep 5355
#1742283814
vim /etc/systemd/resolved.conf
#1742283822
vim /etc/resolv.conf 
#1742283910
sudo vim /etc/systemd/resolved.conf.d/custom.conf
#1742283949
ls /etc/systemd/resolved.conf.d/
#1742283964
sudo ls /etc/systemd/
#1742283927
man resolved.conf
#1742284078
nmap -p1-65535 192.168.68.107
#1742284106
nmap -p1-85535 192.168.68.107
#1742284111
nmap -p1-65535 192.168.68.107
#1742284349
sudo ufw status verbose
#1742284360
sudo ufw status numbered
#1742284373
sudo ufw delete14
#1742284375
sudo ufw delete 14
#1742284379
sudo ufw status numbered
#1742284382
sudo ufw delete 13
#1742284385
sudo ufw status numbered
#1742284396
sudo ufw delete 7
#1742284400
sudo ufw status numbered
#1742284404
sudo ufw delete 6
#1742284407
sudo ufw status numbered
#1742284418
sudo ufw status verbose
#1742284426
sudo ufw reloade
#1742284428
sudo ufw reload
#1742284433
sudo ufw status verbose
#1742284435
exit
#1742283974
sudo -i
#1742284439
exit
#1742284717
systemd-analyze security
#1742284748
systemd-analyze security sssd.service
#1742284757
systemd-analyze 
#1742284763
systemd-analyze --help
#1742284976
nmcli device status
#1742285037
sudo ufw status verbose
#1742285439
nmap -p1-65535 192.168.68.107
#1742285492
nmap -Pn -p1-65535 192.168.68.107
#1742285507
nmap -sU -p1-65535 192.168.68.107
#1742285513
sudo nmap -sU -p1-65535 192.168.68.107
#1742285567
sudo systemctl status avahi-daemon
#1742285579
sudo systemctl stop avahi-daemon
#1742285585
sudo systemctl disable avahi-daemon
#1742285589
sudo systemctl status avahi-daemon
#1742285595
sudo nmap -sU -p1-65535 192.168.68.107
#1742285624
sudo systemctl mask avahi-daemon
#1742285723
sudo dnf autoremove -y && sudo dnf update -y && sync
#1742285753
sudo fwupdmgr refresh --force && sudo fwupdmgr update --verbose
#1742285807
ptyxis --standalone
#1742285837
rm -Rf ~/'.cache/mesa_shader_cache'*'/'*
#1742285871
resolvectl status
#1742285879
resolvectl status | grep '+DNSOverTLS'
#1742285940
cat /etc/profile.d/99-tweaks.sh
#1742286373
nvidia-settings --assign='GPUPowerMizerMode'='1'
#1742286389
nvidia-settings --assign='GPUGraphicsClockOffsetAllPerformanceLevels'='125'
#1742286395
sudo nvidia-settings --assign='GPUGraphicsClockOffsetAllPerformanceLevels'='125'
#1742286413
sudo nvidia-settings --assign='GPUPowerMizerMode'='1'
#1742286424
sudo nvidia-settings --assign='GPUMemoryTransferRateOffsetAllPerformanceLevels'='1100'
#1742286434
sudo sudo nvidia-smi --power-limit='190'
#1742286441
sudo sudo nvidia-smi --power-limit='140'
#1742286444
nvidia-smi 
#1742286457
sybc
#1742286460
sync
#1742287299
nvidia-smi 
#1742287431
nvidia-smi -q | grep 'GSP'
#1742287485
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#1742287518
gnome-terminal
#1742287529
sudo dnf install gnome-terminal
#1742287557
gnome-terminal
#1742287598
ls -la
#1742282212
htop
#1742287822
gnome-terminal --title='Fedora Updater' -- bash -c "sudo dnf clean 'all' && sudo dnf update -y && sync && sudo flatpak update && flatpak update && sync && sudo restorecon -F -I -R ~ && sudo fstrim --all --verbose && sync && read -n '1' -s -r -p 'Done. Press any key to exit.'"
#1742287910
mc
#1742288043
sudo -i
#1742288063
exit
#1742288090
cat ~/'.config/pipewire/pipewire.conf.d/99-custom.conf'
#1742288096
cat ~/.config/pipewire/pipewire.conf.d/99-custom.conf
#1742288109
cat ~/.config/pulse/cookie 
#1742288150
pkcon -c '1' refresh && pkcon update
#1742288210
grep 'MHz' '/proc/cpuinfo'
#1742288238
df --human-readable --print-type
#1742288589
cat /etc/modprobe.d/nvidia_params.conf 
#1742288611
sudo dmesg |grep -i nvreg
#1742288619
sudo dmesg |grep -i nv
#1742288632
sudo dmesg |grep -i drm
#1742288221
watch --interval '0.5' grep \'cpu MHz\' '/proc/cpuinfo'
#1742288868
btop
#1742289067
sudo cat /sys/firmware/acpi/tables/MSDM
#1742289101
btop
#1742293497
sudo kmodgenca -a
#1742293522
btop
#1742294556
sudo snd upgrade --with-optional Multimedia
#1742294565
sudo dnf upgrade --with-optional Multimedia
#1742294579
sudo dnf upgrade Multimedia
#1742294589
sudo dnf upgrade --help
#1742294619
sudo dnf upgrade --enhancement Multimedia
#1742294638
sudo dnf upgrade 
#1742294649
history 
#1742294711
history |grep "sudo f*"
#1742294728
sudo fwupdmgr refresh --force && sudo fwupdmgr update --verbose
#1742294735
vim .bashrc 
#1742294754
source .bashrc 
#1742294758
firmware-update 
#1742294799
history |grep "sudo dnf update"
#1742294814
gnome-terminal --title='Fedora Updater' -- bash -c "sudo dnf clean 'all' && sudo dnf update -y && sync && sudo flatpak update && flatpak update && sync && sudo restorecon -F -I -R ~ && sudo fstrim --all --verbose && sync && read -n '1' -s -r -p 'Done. Press any key to exit.'"
#1742294934
gnome-terminal --title='Fedora Updater' -- bash -c "sudo dnf clean 'all' && sudo dnf update -y && sync && sudo flatpak update && flatpak update && sync"
#1742295217
btop
#1742296576
sudo dnf search MangoHud
#1742296601
sudo dnf install MangoHud
#1742296608
sudo dnf install mangohud
#1742296642
mangohud
#1742296650
mangoapp 
#1742296693
mangohudctl 
#1742296702
mangohud
#1742296706
mangohud --help
#1742296710
man mangohud
#1742296748
cat /usr/share/doc/mangohud/MangoHud.conf
#1742296750
man mangohud
#1742296768
mangohud --dlsym glxgears
#1742296937
man mangohud
#1742296949
MANGOHUD_CONFIG="gpu_stats=0,font_size=12" mangohud glxgears
#1742296967
MANGOHUD_CONFIG="gpu_stats=0,font_size=20" mangohud glxgears
#1742296999
MANGOHUD_CONFIG="font_size=30" mangohud glxgears
#1742297197
btop
#1742298099
cd /etc/dnf/vars
#1742298100
ls
#1742298103
ls -la
#1742298123
sudo vim dnf.conf 
#1742298104
mc
#1742298269
sudo dnf update --refresh
#1742298305
cd  /var/cache/dnf
#1742298306
ls
#1742298309
cat expired_repos.json 
#1742298326
cd /var/cache/PackageKit
#1742298327
ls
#1742298330
cd 41/
#1742298331
ls
#1742298337
cd metadata/
#1742298338
ls
#1742298411
dnf repoquery -l fzf
#1742298460
sudo dnf update --refresh
#1742298470
sudo dnf autoremove 
#1742298528
sudo dnf update check-upgrade
#1742298552
sudo dnf autoremove 
#1742298555
exit
#1742299036
btop
#1742299494
lsblk 
#1742299649
2+2
#1742299654
calc
#1742299922
btop
#1742301735
sudo dnf install zsh
#1742301771
zsh
#1742303353
exit
#1742303362
zsh
#1742303619
exit
#1742303624
zsh
#1742287637
htop
#1742303820
mc
#1742303869
zsh
#1742303968
sudo dnf remove zsh
#1742303982
ls -la
#1742303992
rm -ef .zshrc .zcompdump 
#1742303998
rm .zshrc .zcompdump 
#1742304001
ls -la
#1742304011
rm .p10k.zsh 
#1742304018
ls -la
#1742304032
htop
#1742304288
btop
#1742312096
ls -la /dev/disk/by-id/
#1742312121
ls -la /dev/disk/by-partuuid/
#1742312156
ls -la /dev/disk/by-uuid/
#1742312162
ls -la /dev/disk/by-path/
#1742312171
ls -la /dev/disk/by-id/
#1742312188
sudo dmesg |grep 00000000000000000026b76863bcb725
#1742312205
sudo dmesg |grep 0000:00:0e.0-pci-10000:e1:00.0
#1742312213
sudo dmesg |grep dev
#1742312218
sudo dmesg |grep dev/
#1742312315
sudo dmesg |grep nvme
#1742312464
lsblk 
#1742312511
fsck
#1742312516
fsck /dev/nvme0n1p1
#1742312520
sudo fsck /dev/nvme0n1p1
#1742312583
cd /boot/efi/
#1742312584
ls
#1742312590
cd EFI/ZBM/
#1742312591
ls
#1742312593
ls -la
#1742312598
cd /boot/
#1742312600
ls -la
#1742312601
cd /
#1742312605
sudo dmesg 
#1742312645
exit
#1742312711
cat /etc/fstab 
#1742317893
history |grep settings
#1742317910
sudo zfs get all zroot > zfs_settings.txt
uname -a
groups
ip
id
sudo -i
exit
sudo dnf update --refresh
sudo dnf install mc
mc
sudo -i
cd
cd bakup/
ls -la
dnf group list -v --available|grep gnome
dnf4 group list -v --available|grep gnome
dnf group list --available|grep gnome
dnf group list --available
dnf group list --available|grep gnome
dnf group list --hiden --available|grep gnome
dnf group list --hiden |grep gnome
sudo dnf group list --hiden |grep gnome
sudo dnf4 group list --hiden |grep gnome
sudo dnf group list --hidden
sudo dnf group list --hidden|grep gnome
sudo dnf install @GNOME
sudo dnf install @gnome-desktop
reboot
sudo dnf update --refresh
sudo dnf install gnome-terminal
vim /etc/dnf/dnf.conf
sudo vim /etc/dnf/dnf.conf
sudo dnf install firefox
curl -fsSL https://repo.librewolf.net/librewolf.repo | pkexec tee /etc/yum.repos.d/librewolf.repo
sudo dnf install librewolf
sudo vim /etc/yum.repos.d/librewolf.repo 
sudo dnf install librewolf
sudo dnf install dnf5-action-plugin
sudo dnf update --refresh
zfs list
history |grep snap
history |grep -i snap
sudo -i
htop
df -h
zpool list
zpool status
,c
mc
cd /home/
ls -la
sudo zfs set snapdir=visible zroot/home
sudo zfs set snapdir=visible zroot/home/liviu_mozilla
sudo zfs set snapdir=visible zroot/home/liviu_librewolf
ls -la
mc
 sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
 sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password
sudo vim /etc/yum.repos.d/1password.repo 
sudo dnf install 1password
sudo vim /etc/yum.repos.d/1password.repo 
sudo dnf install 1password
sudo vim /etc/yum.repos.d/1password.repo 
sudo dnf install 1password
sudo hostnamectl set-hostname --pretty "Liviu's workstation"
sudo hostnamectl set-hostname --static bobdenaut
exit
sudo vim /etc/hosts
ping bobdenaut
sudo dnf install ufw
sudo vim /etc/yum.repos.d/1password.repo 
sudo vim /etc/yum.repos.d/librewolf.repo 
sudo dnf update --refresh
sudo systemctl disable firewalld
sudo systemctl stop firewalld
sudo dnf install psd
 flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak update
sudo flatpak update
sudo dnf install gimp
sudo dnf autoremove
sudo dnf upgrade
sudo dnf install fastfetch
fastfetch 
df -h
zfs list snapshots
zfs list -t snapshots
zfs list
 zfs list -t snapshot
sudo zfs destroy zroot/home/liviu_mozilla@base
sudo zfs destroy zroot/home/liviu_librewolf@base
 zfs list -t snapshot
history |grep snapshit
history |grep snapshot
sudo -i
history 
sudo zfs set snapdir=visible zroot/ROOT/fedora
cd /
ls -la
cd /.zfs/
ls -la
cd ..
cd /var/
ls -la
cd /lib
ls -la
sudo zfs set snapdir=visible -r zroot/ROOT/fedora
zfs list
zpool list
zpool status
zpool iostat -n 1
htop
zfs get all zroot|grep primary
zfs get all zroot|grep secundary
zfs get all zroot|grep secondary
exit
cat .bashrc 
cat /etc/bashrc
source .bashrc 
htop
zfs list
history |grep -i snap
sudo -i
lsmod |grep -i nv
nvidia-smi 
uname -a
sudo dracut -f
htop
ls -la /boot/
exit
nvidia-smi 
htop
lsmod |grep nvidia
modprobe nvidia
sudo modprobe nvidia
sudo cat /sys/module/nvidia_drm/parameters/modeset
nvidia-drm.modeset
sudo nvidia-drm.modeset
sudo dmesg|grep -i nvidia
sudo nvidia-drm.modeset
sudo dmesg|grep -i nvidia
sudo dmesg|grep -i nv
clear
sudo dmesg|grep -i nvidia
sudo dmesg|grep -i zfs
sudo vim /etc/modprobe.d/nvidia_params.conf 
sudo dracut -f
ls -la /boot/
ls /etc/dracut.conf
cat /etc/dracut.conf
man dracut.conf
history |grep akmod
history |grep akmond
history |grep akmod-nvidia
history |grep -i akmod-nvidia
sudo -i
sudo dmesg|grep nvidia
lsmod |grep nvidia
lsmod |grep -i nvidia
sudo dmesg|grep -i nvidia
cd /etc/dracut.conf.d/
ls
cat modprobe_files.conf 
cat /etc/modprobe.d/nvidia_params.conf 
cat zol.conf 
ls
sudo vim zol.conf 
history |grep nvidia
history |grep -i nvidia
sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda
sudo dnf install nvidia-gpu-firmware
nvidia-smi 
dkms status
lsinitrd
sudo lsinitrd
sudo lsinitrd|grep nvidia
sudo lsinitrd|grep nvidia.conf
ls
ls /etc/modprobe.d/nvidia_params.conf 
sudo lsinitrd|grep nvidia_params.conf
ls /etc/modprobe.d/zfs_arc.conf 
sudo lsinitrd|grep zfs_arc.conf
cat /usr/lib/modprobe.d/nvidia-uvm.conf
ls
cat modprobe_files.conf 
cat /etc/modprobe.d/nvidia_params.conf
sudo vim /etc/modprobe.d/nvidia_params.conf
mokutil --sb-state
cat /etc/kernel/cmdline
sudo vim /etc/kernel/cmdline
sudo updatedb
locate refind_linux.conf
sudo dnf install locate
locate refind_linux.conf
updatedb
sudo updatedb
locate refind_linux.conf
locate refind
locate etc
whereis refind_linux.conf
which refind_linux.conf
cd /boot/efi/EFI/
ls
cat /etc/modprobe.d/nvidia_params.conf 
sudo dracut -f
sudo vim /etc/modprobe.d/nvidia_params.conf 
sudo dracut -f
sudo vim /etc/modprobe.d/nvidia_params.conf 
sudo dracut -f
sudo vim /etc/modprobe.d/nvidia_params.conf 
sudo dracut -f
sudo -i
ls -la /boot/
btop
sudo mkdir -p /usr/local/share/fonts/firamono
sudo mkdir -p /usr/local/share/fonts/jetbrains
sudo mkdir -p /usr/local/share/fonts/ubuntu
sudo mkdir -p /usr/local/share/fonts/ubuntumono
sudo mkdir -p /usr/local/share/fonts/ubuntusans
cd Downloads/
cd UbuntuMono/
ls
sudo cp *.ttf /usr/local/share/fonts/ubuntumono/
cd ../Ubuntu
ls
sudo cp *.ttf /usr/local/share/fonts/ubuntu
cd ../JetBrainsMono/
ls
sudo cp *.ttf /usr/local/share/fonts/jetbrains/
cd ../FiraMono/
sudo cp *.ttf /usr/local/share/fonts/firamono/
ls
sudo cp *.otf /usr/local/share/fonts/firamono/
cd ../UbuntuSans/
ls
sudo cp *.ttf /usr/local/share/fonts/ubuntusans/
cd /usr/local/share/fonts/ubuntusans/
cd ..
ls -la
sudo restorecon -vFr firamono/ jetbrains/ ubuntu ubuntumono/ ubuntusans/
ls -la
sudo fc-cache -v
nvidia-smi 
sudo systemctl enable nvidia-persistenced.service 
sudo systemctl start nvidia-persistenced.service 
nvidia-smi 
btop
sudo dnf install sensors
sudo systemctl status lm_sensors.service 
sudo systemctl start lm_sensors.service 
sudo systemctl status lm_sensors.service 
sudo -i
sudo systemctl reload lm_sensors.service 
sudo systemctl stop lm_sensors.service 
sudo systemctl start lm_sensors.service 
sudo systemctl status lm_sensors.service 
locate lm_sensors
sudo systemctl status lm_sensors.service 
sudo systemctl stop lm_sensors.service 
sensors
sudo systemctl disable lm_sensors.service 
sensors
btop
htop
btop
btop
history 
fc-cache -v
sudo fc-cache -v
sudo dnf install gnome-tweaks
btop
sudo dnf reinstall btop
btop
sudo dnf update --refresh
sudo dnf install libreoffice
fc-list :charset=2830
sudo fc-list :charset=2830
btop
sudo dnf install fontconfig
nvidia-smi 
sudo dnf install python3-fonttools
sudo dnf install gdouros-symbola-fonts google-noto-sans-symbols-2-fonts
btop
sudo fc-list :charset=2830
btop
df -h
zfs list
cat .bashrc 
vim /etc/bashrc
sudo dnf install bash-color-prompt bash-completion
exit
cat /etc/sysconfig/bash-prompt-xterm
sudo dnf install bash-prompt
sudo dnf search bash-prompt
sudo dnf search bash
exit
zfs get all zroot
zfs set atime=off zroot
sudo zfs set atime=off zroot
sudo zfs set xattr=sa zroot
zfs get all zroot|grep logbias
zfs get all zroot|grep compression
zfs get compressratio zroot
sudo zfs set compression=zstd-fast zroot
zfs get compression -r zroot
ps aux | grep mandb
systemctl status dnf-makecache.timer
sudo systemctl status dnf-makecache.timer
sudo systemctl status dnf5-makecache.timer 
sudo systemctl status dnf5-makecache.service 
sudo dmesg -w
arc_summary 
zfs get all|more
zfs get all|grep relatime
sudo zfs set relatime=off zroot
zfs get all|grep relatime
zfs get all|grep attr
sudo zfs set xattr=off zroot
zfs get all|grep attr
zfs get all
zfs get all|more
sudo dnf search openjdk
sudo dnf install java-latest-openjdk-devel
sudo alternatives --config java
java --version
exit
sudo fwupdmgr refresh --force && sudo fwupdmgr update --verbose
#1742412790
history 
#1742412828
exit
#1742412843
history 
#1742412850
mc
#1742413029
history 
#1742413040
exit
#1742413040
exit
#1742413076
history 
#1742413114
ls -la /usr/local/bin/
#1742413133
cd /home/liviu/bakup/fedora/usr_local_bin
#1742413135
ls
#1742413160
sudo cp avgs dnf kernel-update mount_cache.sh zfs-update /usr/local/bin/
#1742413170
cd  /usr/local/bin/
#1742413172
ls -la
#1742413181
sudo dnf update
#1742413190
sudo zfs-update 
#1742413213
sudo kernel-update 
#1742413227
sudo kernel-update -v
#1742413246
vim kernel-update 
#1742413264
vim dnf 
#1742413271
vim zfs-update 
#1742413285
sudo vim zfs-update 
#1742413297
zfs-update 
#1742413301
sudo vim zfs-update 
#1742413309
zfs-update 
#1742413328
sudo dnf update --refresh
#1742413377
zfs list
#1742413440
zfs list -o name,used,avail,refer
#1742413541
lscpu | grep Virtualization
#1742413564
sudo dnf install qemu-kvm libvirt virt-install virt-manager virt-viewer     edk2-ovmf swtpm qemu-img guestfs-tools libosinfo tuned
#1742413689
sudo wget https://fedorapeople.org/groups/virt/virtio-win/virtio-win.repo     -O /etc/yum.repos.d/virtio-win.repo
#1742413699
sudo dnf install wget
#1742413711
sudo wget https://fedorapeople.org/groups/virt/virtio-win/virtio-win.repo     -O /etc/yum.repos.d/virtio-win.repo
#1742413754
wget https://fedorapeople.org/groups/virt/virtio-win/virtio-win.repo
#1742413796
cd Downloads/
#1742413797
ls
#1742413810
sudo mv virtio-win.repo /etc/yum.repos.d/
#1742413819
sudo dnf install virtio-win
#1742413883
for drv in qemu interface network nodedev nwfilter secret storage; do     sudo systemctl enable virt${drv}d.service;     sudo systemctl enable virt${drv}d{,-ro,-admin}.socket;   done
#1742413460
iostat -xm 1
btop
htop
#1742413999
sudo virt-host-validate qemu
#1742414017
sudo systemctl enable --now tuned
#1742414023
tuned-adm active
#1742414059
sudo tuned-adm profile virtual-host
#1742414064
tuned-adm active
#1742414072
sudo tuned-adm verify
#1742414095
sudo usermod -aG libvirt $USER
#1742414108
ls /var/lib/libvirt/images/
#1742414117
sudo setfacl -R -b /var/lib/libvirt/images
#1742414125
sudo setfacl -R -m u:$USER:rwX /var/lib/libvirt/images
#1742414132
sudo setfacl -m d:u:$USER:rwx /var/lib/libvirt/images
#1742414138
getfacl /var/lib/libvirt/images
#1742414148
touch /var/lib/libvirt/images/test_file
#1742414152
zfs list
#1742414178
history 
#1742414228
zfs list -o name,used,avail,refer
#1742414245
touch /var/lib/libvirt/images/test_file
#1742414251
ls -la  /var/lib/libvirt/images/test_file
#1742414255
rm  /var/lib/libvirt/images/test_file
#1742414313
sudo dnf update --refresh
#1742414369
htop
#1742414426
sudo systemctl --state=degraded
#1742414461
sudo systemctl --state
#1742414467
man systemctl
#1742414486
sudo systemctl --state=failed
#1742414524
sudo systemctl status passim.service
#1742414683
history |grep passim
#1742414688
sudo -i
#1742414702
sudo systemctl stop passim.service
#1742414707
sudo systemctl disable passim.service
#1742414713
sudo systemctl mask passim.service
#1742414721
sudo systemctl status passim.service
#1742414763
sudo dnf info passim
#1742414441
htop
#1742414912
sudo systemctl status cupsd
#1742414924
sudo systemctl --state=failed
#1742414966
sudo systemctl stop sshd
#1742414974
sudo systemctl disable sshd
#1742415080
cat /user.slice/user-1000.slice/user@1000.service
#1742415143
sudo systemctl status tracker-miner-fs-3
#1742415152
sudo systemctl status tracker
#1742415166
ps axf|grep  tracker
#1742415171
ps axf|grep  -i tracker
#1742415180
sudo systemctl status tracker-miner-fs-3
#1742415192
sudo systemctl --user status tracker-miner-fs-3
#1742415199
sudo systemctl --user stop tracker-miner-fs-3
#1742415204
sudo systemctl --user mask tracker-miner-fs-3
#1742415207
sudo systemctl --user mask tracker-miner
#1742415264
sudo systemctl --user mask tracker-miner-fs-3
#1742415274
sudo systemctl --user mask tracker-miner-fs-control-3.service
#1742415288
sudo systemctl --user disable tracker-miner-rss-3.service
#1742415293
sudo systemctl --user mask tracker-miner-rss-3.service
#1742415302
sudo systemctl --user disable tracker-writeback-3.service
#1742415307
sudo systemctl --user mask tracker-writeback-3.service
#1742415315
sudo systemctl --user disable tracker-xdg-portal-3.service
#1742415320
sudo systemctl --user mask tracker-writeback-3.service
#1742415036
sudo systemctl status user@1000.service
#1742415364
sudo systemctl --user status cupsd
#1742415367
sudo systemctl  status cupsd
#1742415370
exit
#1742414930
sudo systemctl --state=running
#1742415488
sudo systemctl status run-user-1000.mount
#1742415516
cat /proc/self/mountinfo 
#1742415551
sudo systemctl status lvm2-monitor.service
#1742415565
sudo systemctl stop lvm2-monitor.service
#1742415566
sudo systemctl status lvm2-monitor.service
#1742415581
sudo systemctl disable lvm2-monitor.service
#1742415619
sudo systemctl status user-runtime-dir@1000.service
#1742415654
sudo systemctl status lvm2-lvmpolld.socket
#1742415662
sudo systemctl stop lvm2-lvmpolld.socket
#1742415667
sudo systemctl disable lvm2-lvmpolld.socket
#1742415686
sudo systemctl status sshd
#1742415464
sudo systemctl --state=active
#1742415738
sudo systemctl status fstrim
#1742415743
sudo systemctl start fstrim
#1742415745
sudo systemctl status fstrim
#1742415761
sudo systemctl stop fstrim
#1742415779
sudo systemctl status fstrim.timer 
#1742415788
sudo systemctl disable fstrim.timer 
#1742415795
sudo systemctl stop fstrim.timer 
#1742415802
sudo systemctl disable fstrim
#1742415807
sudo systemctl stop fstrim
#1742416020
df -h
#1742416063
sudo dnf install psd
#1742416132
whereis browsers
#1742416136
whereis psd
#1742416144
cd /usr/share/psd
#1742416145
ls
#1742416148
cd browsers/
#1742416150
ls
#1742416160
sudo vim librewolf
#1742416167
ls
#1742416178
psd
#1742416185
vim /home/liviu/.config/psd/psd.conf
#1742416232
psd p
#1742416247
sudo vim /etc/sudoers
#1742416266
psd p
#1742416296
systemctl --user enable psd
#1742416301
systemctl --user start psd
#1742416322
psd p
#1742416330
df -h
#1742416383
zfs list
#1742416480
df -h
#1742416498
history |grep show
#1742416506
sudo -i
#1742416636
psd p
#1742416641
df -h
#1742416688
systemctl --user status psd
#1742416714
cd
#1742416724
cd .config/systemd/user/default.target.wants/
#1742416725
ls
#1742416730
vim psd.service 
#1742416774
ls -la
#1742416784
sudo vim psd.service 
#1742416797
ls -la /usr/local/bin/
#1742416805
cat /usr/local/bin/mount_cache.sh 
#1742416822
systemctl --user status psd
#1742416831
systemctl --user stop psd
#1742416841
systemctl --user daemon-reload
#1742416843
systemctl --user stop psd
#1742416845
systemctl --user status psd
#1742416873
df -h
#1742416882
mount|grep mozilla
#1742416894
mount|grep cache
#1742416908
systemctl --user start psd
#1742416920
systemctl --user status psd
#1742417017
sudo vim /etc/sudoers
#1742417040
systemctl --user status psd
#1742417045
systemctl --user start psd
#1742417048
systemctl --user status psd
#1742417055
systemctl --user stop psd
#1742417056
systemctl --user status psd
#1742417063
systemctl --user start psd
#1742417066
systemctl --user status psd
#1742417076
systemctl --user start psd
#1742417077
systemctl --user status psd
#1742417085
mount
#1742417199
exit
#1742417271
zpool iostat -n 1
#1742417451
cat /etc/modprobe.d/zfs_arc.conf 
#1742417521
btop
#1742417541
uptime 
#1742417787
ip a
#1742417833
zpool iostat -n 1
#1742419177
btop
#1742419214
sudo cat /sys/module/nvidia_drm/parameters/modeset
#1742419231
sudo dnf copr enable lukenukem/asus-linux
#1742419244
sudo dnf update --refresh
#1742419273
sudo dnf install asusctl supergfxctl
#1742419331
sudo systemctl enable supergfxd.service
#1742419343
sudo dnf install asusctl-rog-gui
#1742419389
sudo dnf autoremove 
#1742419409
zfs list
#1742419638
sudo dmesg
#1742420109
sudo dnf install iwlwifi
#1742420119
cat .bashrc 
#1742420124
firmware-update 
#1742420176
sudo systemctl status gio-network-monitor
#1742420251
sudo dnf search iwlwifi
#1742420311
dnf info iwlwifi-dvm-firmware.noarch
#1742420342
dnf info iwlwifi-mvm-firmware.noarch
#1742420521
dmesg | grep iwl
#1742420523
sudo dmesg | grep iwl
#1742421100
lspci -nnk 
#1742421114
sudo dnf search lspci
#1742421252
sudo dnf install pciutils
#1742421274
lspci 
#1742421334
sudo dnf search iwlwifi
#1742421357
sudo dnf install iwlwifi-dvm-firmware
#1742421379
sudo dmesg 
#1742421421
lsmod|grep iwlwifi
#1742421430
modprobe  iwlwifi
#1742421470
sudo dmesg
#1742421478
sudo dmesg|grep wifi
#1742421498
exit
#1742421626
sudo dmesg|grep wifi
#1742421645
lsmod|grep iwlwifi
#1742421721
modprobe iwlwifi
#1742421725
sudo dmesg|grep wifi
#1742421781
sudo dnf install iwlwifi-mvm-firmware
#1742421829
sudo dmesg|grep wifi
#1742421834
lsmod|grep iwlwifi
#1742421843
firmware-update 
#1742421870
sudo dmesg|grep wifi
#1742421954
sudo systemctl restart NetworkManager.service
#1742421957
sudo dmesg|grep wifi
#1742422000
cat /etc/NetworkManager/conf.d/00-wifi-powersave.conf
#1742422011
cd /etc/NetworkManager/conf.d/
#1742422013
ls
#1742422015
ls -la
#1742422055
ip a
#1742422074
sudo iwconfig wlan0 power off
#1742422121
which iwconfig
#1742422130
whereis  iwconfig
#1742422144
sudo dnf install iwconfig
#1742422153
sudo dnf search iwconfig
#1742422161
sudo dnf provides=iwconfig
#1742422166
sudo dnf provides iwconfig
#1742422207
sudo dnf provides */iwconfig
#1742422322
sudo dmesg|grep wifi
#1742422371
sudo modprobe -r iwlwifi && sudo modprobe iwlwifi
#1742422376
ip a
#1742422445
sudo dracut -f
#1742422735
df -h /home/liviu/.cache/mozilla
#1742422743
df -h /home/liviu/.cache/librewolf
#1742423535
history |grep compression
#1742423556
zfs get compression -r zroot
#1742424029
zpool status
#1742424040
zpool list
#1742424050
zfs list
#1742424441
nvidia-smi 
#1742424467
sudo dnf update --refresh
#1742424487
btop
#1742424759
journalctl -b -1 | grep -i error
#1742424770
journalctl -u libvirtd -b -1
#1742424775
journalctl -b -1
#1742424799
sudo nano /etc/systemd/journald.conf
#1742424844
locate journald.conf
#1742424155
htop
#1742424903
cd /etc/systemd/journald.conf.d/
#1742424907
cd /etc/systemd/journald.conf
#1742424917
systemd-analyze cat-config systemd/journald.conf
#1742424854
sudo vim /usr/lib/systemd/journald.conf
#1742424970
sudo systemctl restart systemd-journald
#1742424976
sudo systemctl status systemd-journald
#1742424998
journalctl -b -1
#1742425002
journalctl 
#1742425021
sudo dmesg 
#1742425031
sudo dmesg |grep wifi
#1742425069
journalctl -b -1
#1742425071
journalctl -b -2
#1742425073
journalctl -b 
#1742425098
exit
#1742425100
exit
#1742425675
zpool iostat zroot 1
#1742426963
cat /etc/modprobe.d/zfs_arc.conf 
#1742426977
zfs get all|grep zfs_txg_timeout
#1742426983
zfs get all|grep txg_timeout
#1742426986
zfs get all|grep txg
#1742427061
arc_summary |grep zfs_txg_timeout
#1742427169
htop
#1742427243
btop
#1742428301
sudo ufw reset
#1742428454
sudo ufw default deny incoming
#1742428460
sudo ufw default deny outgoing
#1742428465
sudo ufw default deny routed
#1742428474
sudo ufw activate
#1742428481
sudo ufw enable
#1742428494
sudo systemctl enable ufw
#1742428499
sudo systemctl start ufw
#1742428507
sudo ufw status verbose
#1742428517
sudo ufw status numbered
#1742428524
sudo ufw delete 1
#1742428538
sudo ufw status numbered
#1742428544
sudo ufw allow out 80
#1742428548
sudo ufw allow out 443
#1742428558
sudo ufw allow out 53/tcp
#1742428563
sudo ufw allow out 53/udp
#1742428566
sudo ufw status numbered
#1742428680
ss -tulnp
#1742428695
lsof -i -P -n
#1742428709
sudo nmap -sT -sU -p- 127.0.0.1
#1742428718
sudo dnf install nmap
#1742428758
sudo nmap -sT -sU -p- 127.0.0.1
#1742428794
sudo systemctl status llmr
#1742428837
sudo nano /etc/systemd/resolved.conf
#1742429030
sudo systemctl restart systemd-resolved
#1742429034
sudo nmap -sT -sU -p- 127.0.0.1
#1742429047
sudo nano /etc/systemd/resolved.conf
#1742429051
sudo nmap -sT -sU -p- 127.0.0.1
#1742429128
sudo nano /etc/systemd/resolved.conf
#1742429137
sudo systemctl restart systemd-resolved
#1742429139
sudo nmap -sT -sU -p- 127.0.0.1
#1742429199
sudo  ss -l -p '( sport = :5353 )'
#1742429238
sudo vim /etc/systemd/resolved.conf 
#1742429265
systemctl restart systemd-resolved.service
#1742429272
sudo nmap -sT -sU -p- 127.0.0.1
#1742429323
cat /etc/systemd/resolved.conf
#1742429391
cat /etc/NetworkManager/conf.d/llmnr.conf
#1742429435
cat /etc/systemd/resolved.conf
#1742429504
sudo -i
#1742429520
history |grep gnome
#1742429608
sudo dnf group list hidden -v |grep -i gnome
#1742429613
sudo dnf group list hidden |grep -i gnome
#1742429629
sudo dnf group list hidden 
#1742429646
sudo dnf group list 
#1742429670
sudo dnf group list --hidden 
#1742429859
sudo dnf group install standard
#1742429927
sudo dnf group list --hidden 
#1742429984
sudo dnf group install javaenterprise
#1742430005
sudo dnf group list --hidden 
#1742430061
sudo dnf group install hardware-support
#1742430217
sudo dmesg
#1742430228
sudo ufw logging off
#1742430232
sudo dmesg
#1742430263
sudo dmesg|grep nvidia
#1742430267
sudo dmesg|grep -i nvidia
#1742430272
sudo dmesg|grep -i nv
#1742430318
sudo systemctl status playmoth
#1742430338
sudo systemctl status plymouth-start.service 
#1742430679
htop
#1742453353
sudo dnf update --refresh
#1742453373
sudo zfs-update 
#1742453380
sudo kernel-update 
#1742453404
cat /usr/local/bin/kernel-update 
#1742453514
mount | grep liviu
#1742453571
btop
#1742454581
sudo dnf install maven
#1742454627
whereis maven
#1742454632
whereis mvn
#1742454644
zfs list
#1742454660
zfs get all zroot/usr
#1742455003
zfs get all |grep compression
#1742455035
zfs get compression,compressratio
#1742455093
zfs list
#1742455235
sudo zfs set compression=off zroot/home/liviu_cache
#1742455242
zfs get compression,compressratio
#1742455276
sudo zfs set compression=off zroot/home/liviu_mozilla
#1742455280
sudo zfs set compression=off zroot/home/liviu_librewolf
#1742455283
zfs get compression,compressratio
#1742455306
zfs list
#1742455371
zfs set compression=off zroot/var/lib/libvirt
#1742455375
sudo zfs set compression=off zroot/var/lib/libvirt
#1742455378
zfs list
#1742455384
zfs get compression,compressratio
#1742455398
zfs list
#1742455417
sudo zfs set compression=off zroot/var/tmp
#1742455418
zfs list
#1742455421
zfs get compression,compressratio
#1742455433
zfs list
#1742455439
zfs get compression,compressratio
#1742455467
sudo zfs set compression=off zroot/home
#1742455470
zfs get compression,compressratio
#1742455543
zfs list -o name,used,logicalused
#1742455552
zfs list -o name,used,logicalused,ratio
#1742455557
zfs list -o name,used,logicalused,compression
#1742455603
zfs list -o name,used,logicalused,compression,compressratio
#1742455675
sudo zfs set compression=off zroot/var/lib
#1742455677
zfs list -o name,used,logicalused,compression,compressratio
#1742455717
sudo zfs set compression=off zroot/var/www
#1742455731
sudo zfs set compression=off zroot/var/spool
#1742455805
zfs list -o name,used,logicalused,compression,compressratio
#1742455824
zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted
#1742455860
zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted,mountpoint
#1742455870
vim .bashrc 
#1742455889
source .bashrc 
#1742455890
zlist 
#1742455903
ls /var/
#1742456128
sudo dnf update --refresh
#1742456147
btop
#1742456283
sudo rpmkeys --import pubkey.gpg
#1742456432
flatpak update
#1742456438
sudo flatpak update
#1742456457
zpool list
#1742456465
zpool status
#1742456474
zlist 
#1742456478
firmware-update 
#1742456497
sudo firmware-update 
#1742456503
cat .bashrc 
#1742456522
sudo dnf update --refresh --verbose
#1742456537
sudo dnf update --refresh -v
#1742456582
grep limit /etc/dnf/dnf.conf
#1742456598
rpm -qa kernel\* | sort -V
#1742456627
sudo dnf remove kernel-6.11.4-301.fc41.x86_64
#1742456635
sudo dnf remove kernel-*6.11.4-301.fc41.x86_64
#1742456661
sudo dnf remove kernel-*-6.11.4-301.fc41.x86_64
#1742456707
sudo vim /etc/dnf/dnf.conf
#1742456722
sudo dnf autoremove 
#1742456805
dnf5 --verbose update
#1742456810
dnf4 --verbose update
#1742456813
dnf --verbose update
#1742456919
sudo dnf group install multimedia
#1742457271
zlist 
#1742457347
zpool scrub zroot 
#1742457352
sudo zpool scrub zroot 
#1742457365
zpool status
#1742457381
zpool list
#1742457394
zlist 
#1742457602
cd /tmp/
#1742457603
ls
#1742457607
cd mozilla_liviu0/
#1742457608
ls
#1742457612
sh smdisks_zpool_status.sh 
#1742457621
cd ..
#1742457625
rm -rf mozilla_liviu0/
#1742457628
ls -la
#1742457637
cd
#1742457638
btop
#1742458642
sudo zpool status -t zroot
#1742458665
sudo zpool trim zroot
#1742458666
sudo zpool status -t zroot
#1742458707
sudo zpool status 
#1742458709
sudo zpool status -t zroot
#1742458721
sudo dnf update --refresh
#1742458754
zlist 
#1742458763
zpool list 
#1742458785
zpool-iostat 
#1742458823
cat .bashrc 
#1742458834
arcs
#1742458980
sudo zfs-update 
#1742458987
sudo kernel-update 
#1742458991
sudo kernel-install 
#1742459029
btop
#1742459126
history 
#1742459140
zfs get all zroot|grep sync
#1742459146
zfs get all grep sync
#1742459150
zfs get all |grep sync
#1742459203
btop
#1742459494
zfs get all |grep aggregation
#1742459499
zfs get all |grep -i aggregation
#1742459505
zfs get all |grep -i limit
#1742459522
zfs get all |grep -i taskq
#1742459528
zpool get all |grep -i taskq
#1742459534
zpool get all |grep -i aggre
#1742459535
zpool get all |grep -i aggr
#1742459536
zpool get all |grep -i agg
#1742459537
zpool get all |grep -i ag
#1742459541
zpool get all
#1742459575
zfs get all
#1742459596
zfs get all|grep record
#1742459631
btop
#1742459664
arc_summary 
#1742459670
arc_summary |grep aggregation
#1742459932
btop
#1742460933
mount |grep .cache
#1742460940
psd p
#1742460961
psd delete
#1742460970
psd clean
#1742460974
psd p
#1742460987
btop
#1742461078
sudo dnf reinstall gnome-software
#1742463673
btop
#1742464448
cd
#1742464460
grep -r "https://mozilla.cloudflare-dns.com/dns-query" ~/
#1742464506
vim /home/liviu/.librewolf/.zfs/snapshot/base/i5g7rq9b.default-default/prefs.js
#1742464549
vim /home/liviu/bakup/fedora/librewolf/librewolf.cfg
#1742464593
grep -r "https://mozilla.cloudflare-dns.com/dns-query" ~/
#1742464963
sudo dnf update --refresh
#1742465052
firmware-update 
#1742465061
sudo dnf update --refresh
#1742465098
sudo dnf update --verbose
#1742465101
sudo dnf update
#1742465138
dnf search nano
#1742465158
sudo dnf install nano
#1742465166
sudo dnf install vim
#1742465178
which dnf5
#1742465193
ls -la /usr/bin/dnf
#1742465205
/usr/bin/dnf update --refresh
#1742465208
sudo /usr/bin/dnf update --refresh
#1742465217
sudo /usr/bin/dnf update 
#1742465242
sudo /usr/bin/dnf search gnome
#1742465370
sudo /usr/bin/dnf search theme
#1742465376
sudo /usr/bin/dnf search theme|grep dark
#1742465390
sudo /usr/bin/dnf search gnome|grep dark
#1742465401
sudo /usr/bin/dnf search gtk|grep dark
#1742465419
sudo /usr/bin/dnf search *|grep boot
#1742465428
flatpak update
#1742465432
sudo flatpak update
#1742465454
sudo dnf update --refresh
#1742465532
sudo pkcon refresh force
#1742465569
sudo vim /etc/yum.repos.d/1password.repo 
#1742465576
sudo pkcon refresh force
#1742465593
journalctl -f -e -u packagekit.service
#1742465630
sudo systemctl status service-log-level 
#1742465650
journalctl -f -e -u packagekit.service
#1742465657
journalctl
#1742465688
systemctl status systemd-journald
#1742465696
sudo systemctl status systemd-journald
#1742465704
sudo systemctl enable systemd-journald
#1742465709
sudo systemctl start systemd-journald
#1742465711
sudo systemctl status systemd-journald
#1742465731
sudo journalctl
#1742465739
sudo systemctl restart systemd-journald
#1742465741
sudo journalctl
#1742465746
journalctl -f -e -u packagekit.service
#1742465756
sudo systemctl enable systemd-journald
#1742465765
sudo systemctl status systemd-journald
#1742465779
zlist 
#1742465797
cd /var/log/journal/
#1742465798
ls
#1742465800
cd ..
#1742465802
ls
#1742465805
cd journal/6b02a2c316544d428f61fe93203a96ed/
#1742465806
ls
#1742465883
journalctl -f -e -u gnome-software.service
#1742465920
journalctl -f -e -u packagekit.service
#1742465953
zlist 
#1742466117
btop
#1742466471
journalctl -f -e -u gnome-software.service
#1742466490
sudo /usr/bin/dnf update --refresh
#1742466534
sudo /usr/bin/dnf search plugin|grep dnf5
#1742466562
sudo /usr/bin/dnf install dnf5-plugins
#1742466573
sudo /usr/bin/dnf install libdnf5-plugin-actions
#1742466641
dnf grouplist | grep -i gnome
#1742466654
sudo dnf grouplist | grep -i tools
#1742466659
sudo dnf group list | grep -i tools
#1742466796
sudo dnf install ctop nvtop
#1742466806
sudo dnf install atop nvtop
#1742466834
nvtop 
#1742466848
atop
#1742466896
sudo dnf autoremove 
#1742466928
sudo dnf distro-sync 
#1742466935
sudo dnf system-upgrade 
#1742466947
sudo dnf check-update 
#1742467080
sudo dnf clean
#1742467093
sudo dnf clean --help
#1742467099
sudo dnf clean all
#1742467111
sudo dnf update --refresh
#1742468155
sudo vim /etc/modprobe.d/zfs_arc.conf 
#1742468315
zfs-stats
#1742468328
sudo dnf install zfs-stats
#1742468378
ls
#1742468381
ls -lah
#1742468365
dd if=/dev/zero of=./testfile bs=4k count=1000000 oflag=direct
#1742468417
zfs get all|grep record
#1742468441
rm testfile 
#1742468453
history |grep record
#1742468466
sudo zfs set recordsize=512K zroot/home
#1742468470
dd if=/dev/zero of=./testfile bs=4k count=1000000 oflag=direct
#1742468499
sudo zfs set recordsize=1M zroot/home
#1742468506
rm testfile 
#1742468508
dd if=/dev/zero of=./testfile bs=4k count=1000000 oflag=direct
#1742468536
sudo zfs set recordsize=512K zroot/home
#1742468543
history |grep record
#1742468546
zfs get all|grep record
#1742468589
sudo zfs set recordsize=128K zroot/home
#1742468591
zfs get all|grep record
#1742468622
zlist 
#1742468639
cat .bashrc 
#1742468650
zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted,mountpoin,recordsize
#1742468670
zfs list -o name,used,logicalused,compression,compressratio,available,referenced,mounted,mountpoint,recordsize
#1742468686
vim .bashrc 
#1742468698
source .bashrc 
#1742468701
zlist 
#1742468793
sudo zfs set recordsize=32K zroot/var/log
#1742468800
sudo zfs set recordsize=16K zroot/var/spool
#1742468811
zlist 
#1742468835
sudo zfs set recordsize=32K zroot/var/tmp
#1742468841
sudo zfs set recordsize=16K zroot/var/www
#1742468842
zlist 
#1742468868
sudo zfs set recordsize=64K zroot/home
#1742468870
zlli
#1742468873
zlist 
#1742468888
dd if=/dev/zero of=./testfile bs=4k count=1024 oflag=direct
#1742468897
dd if=/dev/zero of=./testfile bs=4k count=10240 oflag=direct
#1742468902
ls
#1742468906
rm testfile 
#1742468939
sudo dracut -f
#1742456044
htop
#1742469269
zpool-iostat 
#1742469497
zlist 
#1742469514
zpool-iostat 
#1742469572
sudo -i
#1742469614
zpool-iostat 
#1742469651
dd if=~/filetest of=/dev/null bs=4k iflag=direct
#1742469657
cd Downloads/
#1742469671
ls
#1742469685
dd if=./Win11_24H2_EnglishInternational_x64.iso of=/dev/null bs=4k iflag=direct
#1742469802
zfs get all|grep zfs_vdev_cache_size
#1742469809
arc_summary |grep zfs_vdev_cache_size
#1742469813
arc_summary |grep vdev_cache_size
#1742469816
arc_summary |grep cache_size
#1742469822
zfs get all|grep cache_size
#1742469830
zpool get all |grep zfs_vdev_cache_size
#1742469834
zpool get all |grep cache_size
#1742469919
dd if=/dev/zero of=/var/lib/libvirt/images/testfile bs=4k count=1000000 oflag=direct
#1742469930
dd if=/dev/zero of=/var/lib/libvirt/images/testfile bs=1M count=1000000 oflag=direct
#1742469974
dd if=/dev/zero of=/var/lib/libvirt/images/testfile bs=64K count=1000000 oflag=direct
#1742470006
dd if=/dev/zero of=/var/lib/libvirt/images/testfile bs=16K count=1000000 oflag=direct
#1742470031
dd if=/dev/zero of=/var/lib/libvirt/images/testfile bs=1K count=1000000 oflag=direct
#1742470035
dd if=/dev/zero of=/var/lib/libvirt/images/testfile bs=4K count=1000000 oflag=direct
#1742470057
ls -lah /var/lib/libvirt/images/
#1742470066
rm /var/lib/libvirt/images/testfile 
#1742470092
zfs get all|grep zroot/var/lib/libvirt
#1742470224
sudo dnf install fio
#1742470296
fio --name=test_write --ioengine=sync --rw=randwrite --bs=4k --numjobs=1 --size=10G --time_based --runtime=1m
#1742470416
fio --name=test_write --ioengine=sync --rw=randwrite --bs=4k --numjobs=1 --size=1G 
#1742470460
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=1 --size=1G 
#1742470470
fio --name=test_write --ioengine=sync --rw=randwrite --bs=512k --numjobs=1 --size=1G 
#1742470485
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742470514
zfs get all zroot/home|grep record
#1742470520
fio --name=test_write --ioengine=sync --rw=randwrite --bs=64k --numjobs=4 --size=1G 
#1742470556
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742470629
history |grep record
#1742470645
sudo zfs set recordsize=128k zroot/home
#1742470649
ls
#1742470654
rm test_write.*
#1742470656
ls -la
#1742470661
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742470729
zlist 
#1742470748
rm test_write.*
#1742470750
ls -la
#1742470756
cd /var/lib/libvirt/images/
#1742470757
ls
#1742470764
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742470804
fio --name=test_write --ioengine=sync --rw=randwrite --bs=1M --numjobs=4 --size=1G 
#1742470860
fio --name=test_write --ioengine=sync --rw=randwrite --bs=16k --numjobs=4 --size=1G 
#1742470886
ls
#1742470891
rm test_write.*
#1742470893
ls -la
#1742470917
cd
#1742470920
cd Downloads/
#1742470926
fio --name=test_write --ioengine=sync --rw=randwrite --bs=16k --numjobs=4 --size=1G 
#1742470940
fio --name=test_write --ioengine=sync --rw=randwrite --bs=1M --numjobs=4 --size=1G 
#1742471048
sudo zfs set compression=lz4 zroot/home
#1742471056
zlist 
#1742471075
sudo zfs set compression=lz4 zroot/home/liviu_librewolf
#1742471080
sudo zfs set compression=lz4 zroot/home/liviu_mozilla
#1742471085
rm test_write.*
#1742471091
fio --name=test_write --ioengine=sync --rw=randwrite --bs=1M --numjobs=4 --size=1G 
#1742471143
rm test_write.*
#1742471152
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742471163
rm test_write.*
#1742471168
zlist 
#1742471184
sudo zfs set compression=lz4 zroot
#1742471188
sudo zfs set compression=lz4 zroot/ROOT
#1742471191
sudo zfs set compression=lz4 zroot/ROOT/fedora
#1742471195
zlist 
#1742471223
sudo zfs set compression=lz4 zroot/home/liviu_cache
#1742471225
zlist 
#1742471253
exit
#1742471366
sudo dnf install plymonth
#1742471382
sudo dnf search plym
#1742471409
sudo dnf install plymouth-theme-spinner
#1742471449
sudo vim /etc/modprobe.d/zfs_arc.conf 
#1742471340
htop
#1742471461
sudo dracut -f
#1742471506
sudo systemctl status plymouth-start.service 
#1742471520
sudo systemctl enable plymouth-start.service 
#1742471552
sudo systemctl status plymouth-quit.service 
#1742471559
sudo systemctl enable plymouth-quit.service 
#1742471688
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742471814
sudo vim /etc/modprobe.d/zfs_arc.conf 
#1742472005
sudo dracut -f
#1742472021
sudo vim /etc/modprobe.d/zfs_arc.conf 
#1742471652
htop
#1742472235
btop
#1742472280
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742472308
fio --name=test_write --ioengine=sync --rw=randwrite --bs=512k --numjobs=4 --size=1G 
#1742474771
fio --name=test_write --ioengine=sync --rw=randwrite --bs=128k --numjobs=4 --size=1G 
#1742474801
fio --name=test_write --ioengine=sync --rw=randwrite --bs=64k --numjobs=4 --size=1G 
#1742474819
fio --name=test_write --ioengine=sync --rw=randwrite --bs=1M --numjobs=4 --size=1G 
#1742474832
fio --name=test_write --ioengine=sync --rw=randwrite --bs=1M --numjobs=1 --size=1G 
#1742475125
ls -lah
#1742475133
rm test_write.*
#1742475136
ls -lah
#1742475142
htop
#1742475576
df -h
#1742475754
history |grep journa
#1742476434
journalctl -b -2
#1742476700
sudo dnf update --refresh
#1742476811
btop
#1742477462
history |grep dd
#1742477474
dd if=/dev/zero of=./testfile bs=4k count=1024 oflag=direct
#1742477483
dd if=/dev/zero of=./testfile bs=4k count=10240 oflag=direct
#1742477489
dd if=/dev/zero of=./testfile bs=64k count=10240 oflag=direct
#1742477495
dd if=/dev/zero of=./testfile bs=128k count=10240 oflag=direct
#1742477508
dd if=/dev/zero of=./testfile bs=1M count=10240 oflag=direct
#1742477524
dd if=/dev/zero of=./testfile bs=1k count=10240 oflag=direct
#1742477533
dd if=/dev/zero of=./testfile bs=512k count=10240 oflag=direct
#1742477539
ls
#1742477542
ls -lah
#1742477557
dd if=/dev/zero of=./testfile bs=2M count=10240 oflag=direct
#1742477564
ls -lah
#1742477571
rm testfile 
#1742477573
ls -la
#1742477575
zlist 
#1742477724
btop
#1742478421
zpool-iostat 
#1742478603
zlist 
#1742478644
cd /var
#1742478644
ls
#1742478674
cd ls opt/
#1742478679
ls opt/
#1742478684
ls run/
#1742478695
ls db/
#1742478697
ls db/sudo/
#1742478737
zlist 
#1742478791
avgs /home/liviu/.cache
#1742478796
avgs -a /home/liviu/.cache
#1742478892
history |grep rec
#1742478902
zlist 
#1742478917
sudo zfs set recordsize=64k zroot/home/liviu_cache
#1742478923
zlist 
#1742478938
sudo zfs set recordsize=64k zroot/home/liviu_mozilla
#1742478943
sudo zfs set recordsize=64k zroot/home/liviu_librewolf
#1742478947
zlist 
#1742478991
sudo zfs set recordsize=128k zroot/var
#1742478992
zlist 
#1742479049
zpool-iostat 
#1742479067
zpool iostat -n 1
#1742479113
zfs iostat
#1742479117
btop
#1742481107
sudo dnf update --refresh
#1742481128
sudo zfs-update 
#1742481141
sudo kernel-update 
#1742481154
btop
#1742481726
sudo dnf install podman-desktop
#1742481737
sudo dnf install podman
#1742481824
podman 
#1742481826
podman ps
#1742482077
podman ls
#1742482081
podman logs
#1742482087
podman ps
#1742482091
btop
#1742485723
dnf search ventoy
#1742485850
lsblk 
#1742487672
sudo ufw route allow in on virbr0 out on eth0
#1742487680
ip a
#1742487691
sudo ufw route allow in on virbr0 out on enp108s0
#1742487698
sudo ufw  reload
#1742487882
sudo ufw  status verbose
#1742487990
sudo vim /etc/libvirt/network.conf
#1742488007
sudo ufw  reload
#1742488226
sudo ufw allow in on virbr0 from any to any
#1742488228
sudo ufw  reload
#1742488236
sudo ufw  disable
#1742490748
sudo dnf update --refresh
#1742490785
btop
#1742494236
sudo ufw enable
#1742496214
plymouth-set-default-theme 
#1742496507
sudo plymouth-set-default-theme -l
#1742496548
sudo plymouth-set-default-theme -R tribat
#1742496558
sudo plymouth-set-default-theme -R tribar
#1742496625
sudo systemctl status gdm.service 
#1742496748
sudo vim /etc/plymouth/plymouthd.conf 
#1742496807
sudo plymouth-set-default-theme -R tribat
#1742496810
sudo plymouth-set-default-theme -R tribar
#1742496831
sudo dracut -f
#1742496950
sudo dnf search gdm-plymouth
#1742496956
sudo dnf search plymouth
#1742496983
exit
#1742476417
htop
#1742497026
plymouth --show-splash
#1742497034
plymouth
#1742497165
sudo dnf search plymouth
#1742497186
sudo dnf install plymouth-theme-spinfinity
#1742497213
history 
#1742497225
sudo plymouth-set-default-theme -l
#1742497238
sudo plymouth-set-default-theme -R spinfinity
#1742497261
sudo vim /etc/plymouth/plymouthd.conf 
#1742497286
sudo dracut -f
#1742497404
sudo plymouth-set-default-theme -l
#1742497425
sudo plymouth-set-default-theme -R details
#1742497445
ls -la /boot/
#1742497463
ls -la /boot/loader/
#1742497464
ls -la /boot/loader/entries/
#1742497494
sudo vim /etc/plymouth/plymouthd.conf 
#1742497509
sudo dracut -f
#1742497526
ls -la /boot/
#1742497531
reboot
#1742497920
plymouth-set-default-theme --list
#1742497954
sudo dnf search plymouth
#1742498020
sudo dnf install  plymouth-theme-fade-in  plymouth-theme-solar  plymouth-theme-charge plymouth-theme-breeze
#1742498037
plymouth-set-default-theme --list
#1742498111
sudo dnf search gnome-shell-theme
#1742498155
sudo dnf gnome-shell-theme-yaru pop-gnome-shell-theme gnome-shell-theme-flat-remix
#1742498163
sudo dnf install gnome-shell-theme-yaru pop-gnome-shell-theme gnome-shell-theme-flat-remix
#1742498276
history 
#1742498288
plymouth-set-default-theme --list
#1742498370
sudo plymouth-set-default-theme -R solar
#1742498387
plymouth --show-splash
#1742498390
sudo plymouth --show-splash
#1742498396
sudo dracut -f
#1742498514
sudo systemctl status gdm.service 
#1742498543
sudo systemctl status graphical.target 
#1742498558
history |grep rotate
#1742498560
history |grep rot
#1742498566
history |grep journal
#1742498586
sudo journalctl --vacuum-size=50M
#1742498598
gdm-config 
#1742498608
gdm-config show
#1742498614
sudo gdm-config show
#1742498666
history 
#1742498905
sudo dnf search gdm-theme
#1742498909
sudo dnf search gdm
#1742498939
sudo dnf install gdm.x86_64
#1742498944
sudo dnf install gdm
#1742499010
sudo dnf search theme|grep gdm
#1742499014
sudo dnf search theme|grep gnome
#1742499038
sudo dnf install  gnome-themes-extra
#1742499262
gdm
#1742499291
history 
#1742499605
ls -la
#1742499635
cd Pictures/
#1742499636
ls
#1742499639
cd walpapers/
#1742499640
ls
#1742499646
mv 148019.png  ~
#1742499648
ls -la
#1742499650
cd ..
#1742499653
ls -la
#1742499675
cd /etc/gdm/
#1742499676
ls
#1742499686
sudo -i
#1742500804
mount | grep .config
#1742500812
mount
#1742500819
mount | grep .config
#1742500824
mount | grep .cache
#1742500831
psd p
#1742500838
psd clean
#1742500853
psd p
#1742501394
sudo dnf update --refresh
#1742501453
sudo zfs-update 
#1742502388
history |grep failed
#1742502395
sudo systemctl --state=failed
#1742502421
sudo systemctl status plymouth-start.service
#1742502429
sudo systemctl stop plymouth-start.service
#1742502435
sudo systemctl disable plymouth-start.service
#1742502441
sudo systemctl mask plymouth-start.service
#1742502451
sudo systemctl status plymouth-halt.service 
#1742502460
sudo systemctl disable plymouth-halt.service 
#1742502465
sudo systemctl mask plymouth-halt.service 
#1742502477
sudo systemctl mask plymouth-poweroff.service 
#1742502484
sudo systemctl disable plymouth-poweroff.service 
#1742502499
sudo dnf remove plymouth
#1742502525
sudo dnf autoremove 
#1742502534
sudo dnf clean all
#1742502628
sudo systemctl --state=failed
#1742502639
sudo systemctl mask plymouth-start.service
#1742502645
sudo systemctl status plymouth-start.service
#1742502651
sudo systemctl remove plymouth-start.service
#1742502657
sudo systemctl stop plymouth-start.service
#1742502659
exit
#1742502372
htop
#1742502817
sudo dnf update --refresh
#1742502850
sudo flatpak update
#1742502857
flatpak update
#1742504373
nvtop
#1742504443
flatpak update
#1742504040
btop
#1742507688
ps -eLf
#1742507731
sudo dnf update --refresh
#1742507748
sudo dnf update
#1742509396
history 
#1742507761
btop
#1742510808
sudo dnf install lynis
#1742510828
lynis 
#1742510839
lynis audit
#1742510846
lynis audit system
#1742510889
sudo lynis audit system
#1742511021
lynis 
#1742511354
sudo ufw enable
#1742511369
sudo ufw status verbose
#1742512061
sudo dnf truenas
#1742512074
sudo dnf install truenas
#1742512080
sudo dnf search truenas
#1742512909
colormgr 
#1742512916
sudo dnf search colorls
#1742512939
sudo dnf fzf
#1742512945
sudo dnf install              fzf
#1742512955
fzf
#1742513043
fzf --help
#1742513058
fzf --preview vim
#1742513136
fzf --preview -e
#1742513244
fzf --preview
#1742513263
vim fzf --preview vim
#1742513268
vim 'fzf --preview vim'
#1742513272
ls
#1742513279
rm lynis*
#1742513281
ls
#1742513313
fzf --preview vim
#1742513363
vim **
#1742513378
vim ** fzf
#1742513393
vim 
#1742513457
find . -type f|fzf
#1742513474
find . -type f|fzf 'less{}'
#1742513481
find . -type f|fzf 'less {}'
#1742513493
find . -type f|fzf --preview 'less {}'
#1742513531
find . -type f|fzf --preview 'vim'
#1742513553
find . -type f|fzf --preview 'less {}'
#1742513608
vim .bashrc 
#1742513636
source .bashrc 
#1742513638
f
#1742513968
find . -type f|fzf --preview 'cat {}'
#1742513993
find . -type f|fzf --preview 'less {}'
#1742514030
vim $(find . -type f|fzf --preview 'less {}')
#1742514083
vim $(fzf --preview 'less {}')
#1742514124
source .bashrc 
#1742514138
vim .bashrc 
#1742514172
. .bashrc 
#1742514175
vim .bashrc 
#1742514247
. .bashrc 
#1742514250
vim .bashrc 
#1742514262
. .bashrc 
#1742514265
vim .bashrc 
#1742514272
. .bashrc 
#1742514282
vim .bashrc 
#1742514292
vim $(fzf --preview 'less {}')
#1742514428
bat
#1742514434
vim .bashrc 
#1742514460
source .bashrc 
#1742514463
vim .bashrc 
#1742514476
source .bashrc 
#1742514478
vim .bashrc 
#1742514530
source .bashrc 
#1742514532
fe
#1742514540
vim .bashrc 
#1742514554
cd /
#1742514555
fe
#1742514663
btop
#1742504452
htop
#1742515389
sudo systemctl status fwupd.service 
#1742515401
sudo systemctl status fwupd-refresh.service 
#1742515407
sudo systemctl start fwupd-refresh.service 
#1742515408
sudo systemctl status fwupd-refresh.service 
#1742515419
sudo systemctl status fwupd-offline-update.service 
#1742515422
exit
#1742515475
htop
#1742578321
sudo dnf update --refresh
#1742578480
sudo zfs-update 
#1742578486
sudo kernel-update 
#1742578520
sudo dracut -f
#1742578673
uname -a
#1742578684
lsmod |grep nvidia
#1742578688
nvidia-smi 
#1742578760
sudo dnf search nscde
#1742578844
sudo dnf install nscde  NsCDE-icon-theme NsCDE-data  NsCDE-doc
#1742579007
dnf history list
#1742579039
sudo systemctl status gdm.service 
#1742579097
ls -la
#1742579142
dnf info nscde
#1742579155
dnf provides  nscde
#1742579351
exit
#1742579409
ps axf|grep gdm
#1742579415
sudo systemctl status gdm.service 
#1742579424
sudo systemctl stop gdm.service 
#1742579426
sudo systemctl status gdm.service 
#1742579428
ps axf|grep gdm
#1742579441
/usr/bin/nscde
#1742579471
man start-statd 
#1742579504
xterm
#1742579534
fvwm
#1742579546
fvwm2
#1742579558
sudo systemctl start gdm.service 
#1742579581
fvwm
#1742579585
fvwm2
#1742579594
/usr/bin/nscde
#1742579607
ls -la
#1742579620
ls -la .config/
#1742579636
ls -la .config/h
#1742579639
ls -lah .config/
#1742579653
rm .config/background 
#1742579660
ls -la
#1742579668
rm -rf .fvwm
#1742580058
sudo dnf install -y ksh xorg-x11-utils xdotool ImageMagick xscreensaver     python3-pyyaml python3-qt5 qt5ct qt5-styleplugins     stalonetray xterm python3 python3-pyxdg libstroke xsettingsd     fvwm perl-File-MimeInfo gkrellm rofi xclip dejavu-serif-fonts
#1742580191
cd
#1742580194
vim .xsession
#1742580372
cat /usr/share/xsessions/nscde.desktop 
#1742580381
cat /usr/share/xsessions/fvwm.desktop 
#1742580390
vim .xsession
#1742580477
locate Installer.ksh
#1742580491
whereis Installer.ksh
#1742580500
sudo updatedb 
#1742580519
locate Installer.ksh
#1742580527
locate *.ksh
#1742580572
locate nscde
#1742580672
sudo systemctl status gdm
#1742580861
dnf environment list --available | grep desktop
#1742580919
dnf install switchdesk switchdesk-gui
#1742580927
sudo dnf install switchdesk switchdesk-gui
#1742580950
switchdesk
#1742580984
cat .xsession.switchdesk 
#1742581016
cat /etc/sysconfig/desktop
#1742580767
htop
#1742581065
sudo systemctl status gdm
#1742581090
gdm-config 
#1742581098
gdm-config show
#1742581104
sudo gdm-config show
#1742581113
gdm
#1742581123
sudo systemctl restart gdm
#1742581221
ps axf|grep gdm
#1742581229
sudo systemctl stop gdm
#1742581234
ps axf|grep gdm
#1742581239
cat .xsession.switchdesk 
#1742581250
exec /usr/bin/nscde
#1742581267
sudo systemctl stoart gdm
#1742581277
sudo systemctl start gdm
#1742581361
sudo dnf update --refresh
#1742581379
sudo flatpak update
#1742581422
history 
#1742581434
switchdesk
#1742581494
moount|grep libre
#1742581497
moont|grep libre
#1742581502
mount|grep libre
#1742581516
mount|grep liviu
#1742581529
psd p
#1742581539
psd clean
#1742581541
psd p
#1742581852
machinectl shell gdm@
#1742581870
sudo machinectl shell gdm@ /bin/bash
#1742582083
cd /usr/share/xsessions/
#1742582084
ls
#1742582093
cd ..
#1742582094
ls
#1742582099
cd gdm
#1742582100
ls
#1742582103
mc
#1742582267
history 
#1742582280
ls /usr/share/xsessions/
#1742582228
vim /etc/gdm/custom.conf
#1742582323
sudo vim /etc/gdm/custom.conf
#1742582438
sudo systemctl restart gdm
#1742582466
reboot
#1742582733
dnf search gdm
#1742582754
dnf list gdm
#1742582770
sudo dnf install gdm
#1742582782
sudo dnf reinstall gdm
#1742582801
gdm
#1742582806
gdm list
#1742582809
sudo gdm list
#1742582903
ls -la /usr/local/
#1742582905
ls -la /usr/
#1742582921
ls -a -l -Z /usr/local/share/xsessions
#1742582930
history 
#1742582941
ls -a -l -Z /usr/share/xsessions/
#1742582962
ls -la /etc/X11/sessions
#1742582973
ls -la /etc/gdm/wayland-sessions
#1742583117
ls -a -l -Z /usr/share/xsessions/
#1742583318
cat /usr/share/xsessions/nscde.desktop 
#1742583332
cat /usr/share/xsessions/fvwm.desktop 
#1742583357
ls /usr/share/wayland-sessions
#1742583388
sudo cp /usr/share/xsessions/*.desktop /usr/share/wayland-sessions
#1742583394
ls /usr/share/wayland-sessions
#1742583398
exit
#1742582695
htop
#1742583503
ls -la
#1742583510
cat .xsession.switchdesk 
#1742583518
cat .Xclients
#1742583531
cat .Xclients-bobdenaut\:0 
#1742583713
firefox
#1742583775
s
#1742583796
setenforce 0
#1742583800
sudo setenforce 0
#1742583810
firefox
#1742583815
sudo setenforce 1
#1742583831
sudo fixfiles onboot
#1742584339
ls -la
#1742584346
cat .Xclients
#1742584353
cat .Xclients-bobdenaut\:0 
#1742584376
cd /usr/share/wayland-sessions
#1742584378
ls -la
#1742584386
sudo rm fvwm.desktop 
#1742584397
cd
#1742584399
ls -l
#1742584402
ll
#1742584405
ls -la
#1742584412
rm .Xclients*
#1742584414
ls -la
#1742584430
cd .fvwm/
#1742584431
ls -l
#1742584434
ls -la
#1742584436
cd ..
#1742584440
rm -rf .fvwm/
#1742584443
ls -la
#1742584452
cd .NsCDE/
#1742584453
ls -la
#1742584455
cd tmp/
#1742584456
ls
#1742584458
ls -la
#1742584460
cd
#1742584461
exit
#1742584885
btop
#1742584901
dnf search cde
#1742584938
sudo cp /usr/share/xsessions/fvwm.desktop /usr/share/wayland-sessions/
#1742584954
exec nscde
#1742584964
fvwm
#1742584971
fvwm -replace
#1742584732
htop
#1742585660
Xwayland 
#1742585775
sudo systemctl status gdm
#1742585935
rpm -q xorg-x11-server-Xorg
#1742585968
sudo dnf install xorg-x11-server-Xorg
#1742586024
sudo nano /etc/gdm/custom.conf
#1742586057
sudo systemctl restart gdm
#1742586228
sudo nano /etc/gdm/custom.conf
#1742586241
sudo systemctl restart gdm
#1742586341
ls -la
#1742586356
history |locate
#1742586360
history |grep locate
#1742586374
locate nscde
#1742586394
cat /usr/bin/nscde_fvwmclnt
#1742586421
ls -la
#1742586436
cat .xsession.switchdesk 
#1742586449
cp .xsession.switchdesk .xsession
#1742586456
sudo nano /etc/gdm/custom.conf
#1742586485
reboot
#1742586667
journalctl -xe | grep nsCDE
#1742586672
journalctl | grep nsCDE
#1742586681
startx /usr/bin/nsCDE
#1742586729
cat /usr/share/xsessions/nscde.desktop
#1742586815
cat .xsession
#1742586829
chmod +x /home/liviu/.xsession
#1742586833
vim .xsession
#1742586878
cp .xsession /home/liviu/.xinitrc
#1742586880
ls -la
#1742586912
sudo vim /usr/share/xsessions/nscde.desktop
#1742586942
sudo nano /etc/gdm/custom.conf
#1742586949
exit
#1742587072
cat .xinitrc 
#1742587077
cat .xsession
#1742587231
sudo nano /etc/gdm/custom.conf
#1742587259
startx
#1742587273
/usr/bin/nscde
#1742587308
/usr/bin/nscde > log
#1742587314
cat log 
#1742587328
sudo systemctl  restart gdm
#1742587371
htop
#1742587395
asusctl 
#1742587409
asusctl  aura
#1742587414
asusctl  aura static
#1742587441
asusctl armory
#1742587448
asusctl armoury
#1742587462
sudo systemctl  restart supergfxd.service 
#1742587465
reboot
#1742587575
cat log
#1742587631
sudo dnf install xinit
#1742587695
sudo systemc disable gdm
#1742587698
sudo systemctl disable gdm
#1742587702
exit
#1742587794
startx /usr/bin/nscde
#1742588277
ls
#1742588284
mc
#1742588497
clear
#1742588503
fastfetch 
#1742588511
clear
#1742588512
fastfetch 
#1742588861
vim [200~
#1742589379
terminal
#1742589388
gnome-terminal
#1742589393
gnome-console
#1742589524
fvwm --reconfigure
#1742589844
fastfetch 
#1742589850
startx /usr/bin/nscde
#1742590609
f
#1742590616
e
#1742590640
sudo systemctl enable gdm
#1742590658
sudo nano /etc/gdm/custom.conf
#1742590668
reboot
#1742590776
sudo dnf history list
#1742590797
sudo dnf history rollback 57
#1742590826
sudo dnf history list
#1742590856
sudo dnf history rollback 56
#1742590883
sudo dnf history list
#1742590914
sudo systemctl status gdm
#1742590917
htop
#1742591150
btop
#1742591205
htop
#1742591493
TERM=xterm htop
#1742591797
htop
#1742592435
sudo dnf autoremove 
#1742592445
sudo dnf clean all
#1742592576
zfs list 
#1742592590
history |grep snapshot
#1742592602
zfs list 
#1742592626
sudo zfs snapshot -r zroot/ROOT/fedora@21-03-2025-rec
#1742592636
zfs list -t snapshots
#1742592638
zfs list -t snapshot
#1742592697
sudo zfs destroy zroot/ROOT/fedora@21-03-2025-rec
#1742592699
zfs list -t snapshot
#1742592709
zfs list -t snapshot zroot
#1742592713
zfs list -t snapshot zroot/home
#1742592716
zfs list -t snapshot
#1742592742
uname -a
#1742592772
sudo zfs snapshot -r zroot/ROOT/fedora@21-03-k-6.13.7-rec
#1742592775
zfs list -t snapshot
#1742592808
sudo zfs snapshot -r zroot@21-03-k-6.13.7-rec
#1742592826
zfs list -t snapshot
#1742592835
zfs list 
#1742592848
zfs list -t snapshot
#1742592858
zpool list
#1742592863
zpool status
#1742592874
zpool list -t snapshot
#1742592905
zpool list -o health
#1742592913
zpool list -o size
#1742592923
zpool list -o ashift
#1742592934
zpool list -o autotrim
#1742592942
zpool list -o bootfs
#1742592959
zpool list -o listsnapshots
#1742592974
zpool set listsnapshots=on
#1742592991
zpool list -o listsnapsho
#1742593020
zpool set listsnapshots=on
#1742593030
zpool set listsnapshots=on zroot
#1742593034
sudo zpool set listsnapshots=on zroot
#1742593040
zpool list -o listsnapshots
#1742593055
zfs list -t snapshot
#1742593059
zfs list 
#1742593112
sudo zfs snapshot -r zroot/home@21-03
#1742593114
zfs list 
#1742593129
zfs destroy zroot/home/liviu_cache@21-03
#1742593131
sudo zfs destroy zroot/home/liviu_cache@21-03
#1742593134
zfs list 
#1742593174
zfs list -t snapshot
#1742593189
zfs list 
#1742593632
zfs list -r zroot/ROOT/fedora
#1742593757
zfs list -r zroot/home
#1742596730
zfs list -r zroot/ROOT
#1742596736
zfs list -r zroot
