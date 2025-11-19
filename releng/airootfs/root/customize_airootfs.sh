#!/bin/bash
# Enable necessary services
systemctl enable gdm
systemctl enable NetworkManager
# systemctl enable bluetooth

# Create user liveuser with password 'liveuser' and add to wheel
useradd -m -G wheel liveuser
echo "liveuser:liveuser" | chpasswd

# Passwordless sudo for wheel (optional, remove if you want sudo to ask password)
# echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel
# chmod 440 /etc/sudoers.d/wheel

pacman -Qqn | pacman -D --asdeps -
