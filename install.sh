cd ~
git clone https://aur.archlinux.org/aura-bin.git
cd aura-bin
makepkg -i --noconfirm
cd ~
rm aura-bin -rf
sudo aura -Syu rust xorg-server xorg-xinit xorg-xset unclutter bspwm git noto-fonts noto-fonts-cjk noto-fonts-emoji xfce-fonts-misc --noconfirm
sudo aura -Aax xst-git siji-git --noconfirm
git clone https://github.com/skye5000/minimal-arch-setup.git
cd minimal-arch-setup
mv minimal-arch-setup/* .
cd ~
rm minimal-arch-setup -rf
rm .terminfo -rf
mkdir -p /etc/systemd/system/getty@tty1.service.d
cat > /etc/systemd/system/getty@tty1.service.d/override.conf <<- "_EOF_"
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin user --noclear %I $TERM
_EOF_
reboot