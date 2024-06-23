#!/bin/bash
# Variables
USER=$(whoami)

# Script
echo "This command expects you to have a password set!"
sleep 10
clear
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate
clear
echo "Read Only Disabled!"
sleep 7
sudo pacman -S virt-manager virt-viewer qemu qemu-arch-extra edk2-ovmf vde2 ebtables dnsmasq bridge-utils openbsd-netcat libguestfs -y
sudo systemctl enable libvirtd.service
sudo systemctl start libvirtd.service
clear
echo "Opening Guide for rest of setup..."
sleep 10
firefox https://gist.github.com/tatumroaquin/c6464e1ccaef40fd098a4f31db61ab22#enable-normal-user-account-to-use-kvm
sleep 15
wget -P /home/$USER/Desktop/ -O virmgr.desktop https://TechTalonCodes.github.io/.files/code/main/SteamDeck/virt-manager-SteamOS.desktop
exit
