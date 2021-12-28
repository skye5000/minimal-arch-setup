cd ~
sudo pacman -S git --noconfirm
git clone https://aur.archlinux.org/aura-bin.git
cd aura-bin
makepkg -i --noconfirm
cd ~
rm aura-bin -rf
sudo aura -Syu xorg-server xorg-xinit xorg-xset unclutter bspwm noto-fonts noto-fonts-cjk noto-fonts-emoji xfce-fonts-misc --noconfirm
sudo aura -Aax xst-git siji-git --noconfirm
git clone https://github.com/skye5000/minimal-arch-setup.git
mv minimal-arch-setup/* .
cd ~
rm minimal-arch-setup -rf
rm .terminfo -rf
rm install.sh
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo mv override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
reboot
