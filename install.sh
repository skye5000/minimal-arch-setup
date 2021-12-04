cd ~
sudo pacman -S rust xorg-server xorg-xinit xorg-xset unclutter bspwm git noto-fonts noto-fonts-cjk noto-fonts-emoji
git clone https://aur.archlinux.org/aura-bin.git
cd aura-bin
makepkg -i
cd ~
rm aura-bin -rf
sudo aura -A xst greetd
git clone https://github.com/skye5000/minimal-arch-setup.git
cd minimal-arch-setup
tar xf home.tar.gz -C ..
cd ~
rm minimal-arch-setup -rf
sudo systemctl enable greetd.service
reboot