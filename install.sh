cd ~
sudo pacman -S xorg-server xorg-xinit xorg-xset unclutter bspwm git
y
git clone https://aur.archlinux.org/aura-bin.git
cd aura-bin
makepkg -i
cd ~
rm aura-bin -rf
sudo aura -A xst greetd
y
git clone https://github.com/skye5000/minimal-arch-setup.git
cd minimal-arch-setup
tar -xfv home.tar.gz -C ~
cd ~
rm minimal-arch-setup -rf
sudo systemctl enable greetd.service
reboot