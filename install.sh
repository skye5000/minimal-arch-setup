cd ~
shopt -s dotglob
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~
rm yay -rf
sudo yay -Syu xorg-server xorg-xinit xorg-xset unclutter bspwm noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm
sudo yay -S xst-git siji-git --noconfirm
git clone https://github.com/skye5000/minimal-arch-setup.git
mv minimal-arch-setup/* ~
cd ~
rm minimal-arch-setup -rf
rm .terminfo -rf
rm install.sh
rm README.md
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo mv override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
sudo yay -S polybar --noconfirm
reboot
