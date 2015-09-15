# Some useful stuff when setting up a clean ARCH install with UEFI boot

```

parted --script --align optimal /dev/sda mklabel gpt
parted --script --align optimal /dev/sda mklabel msdos
parted --script --align optimal /dev/sda mklabel gpt


parted --script /dev/sda mkpart ESP fat32 1M 513M
parted /dev/sda set 1 boot on

parted --script --align optimal /dev/sda mkpart primary linux-swap 513MiB 8GiB
parted --script --align optimal /dev/sda mkpart primary btrfs 8GiB 100%

mkfs.vfat -F32 /dev/sda1
mkfs.btrfs /dev/sda3



pacman -Syy zsh  xorg-server vim xorg-server-utils feh xorg-font-util xorg-xinit xterm i3-wm i3status dmenu ttf-dejavu xf86-video-vesa xf86-input-synaptics rxvt-unicode urxvt-perls --noconfirm




grub-install --target=i386-pc --grub-setup=/bin/true /dev/sda
 
# will execute /etc/grub.d scripts
grub-mkconfig -o /boot/grub/grub.cfg
 
# writing boot sector 
grub-install  --target=i386-pc  /dev/sda


UUID=<UUID-FOR-SLASH>       /               btrfs          r
UUID=<UUID-FOR-BOOT>          /boot           vfat            rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro   0

```
