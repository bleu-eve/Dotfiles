#!/bin/bash

# Print the logo
Print_logo() {
    cat << "EOF"
                                                               
     ##### ## ###                                              
  ######  /##  ###                                             
 /#   /  / ##   ##                                             
/    /  /  ##   ##                      ##                     
    /  /   /    ##                      ##                     
   ## ##  /     ##  ##   ####      /##   ##    ###      /##    
   ## ## /      ##   ##    ###  / / ###   ##    ###    / ###   
   ## ##/       ##   ##     ###/ /   ###  ##     ###  /   ###  
   ## ## ###    ##   ##      ## ##    ### ##      ## ##    ### 
   ## ##   ###  ##   ##      ## ########  ##      ## ########  
   #  ##     ## ##   ##      ## #######   ##      ## #######   
      /      ## ##   ##      ## ##        ##      ## ##        
  /##/     ###  ##   ##      /# ####    / ##      /  ####    / 
 /  ########    ### / ######/ ## ######/   ######/    ######/  
/     ####       ##/   #####   ## #####     #####      #####   
#                                                              
 ##                                                            
                                                               
                                                                

EOF
}

# Clear screen and show logo
clear
print_logo
                                                               
# Print the logo
Print_logo() {
    cat << "EOF"

                      __                        
    ____  ____ ______/ /______ _____ ____  _____
   / __ \/ __ `/ ___/ //_/ __ `/ __ `/ _ \/ ___/
  / /_/ / /_/ / /__/ ,< / /_/ / /_/ /  __(__  ) 
 / .___/\__,_/\___/_/|_|\__,_/\__, /\___/____/  
/_/                          /____/             

EOF
}

# Clear screen and show logo
clear
print_logo

# Exit on any error
set -e

echo "Starting system setup..."

# Update the system first
echo "Updating system..."
sudo pacman -Syu --noconfirm

# Install yay AUR helper if not present
if ! command -v yay &> /dev/null; then
  echo "Installing yay AUR helper..."
  sudo pacman -S --needed git base-devel --noconfirm
  git clone https://aur.archlinux.org/yay.git
  cd yay
  echo "building yay.... yaaaaayyyyy"
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
else
  echo "yay is already installed"
fi

packages=(
7zip
adwaita-dark
ags-hyprpanel-git
ani-cli
arch-update
ark
base
base-devel
blueman
brightnessctl
btrfs-progs
cargo-aur-bin
cargo-make
cavalier
chromium
clipse
cmatrix
dialog
discord
dkms
dolphin-emu
dunst
efibootmgr
fastfetch
fd
flatpak
fzf
gamescope-nvidia
gimp
git
gnome-calendar
gnome-control-center
gnome-disk-utility
gnome-software
gnome-themes-extra
goverlay
gpu-screen-recorder
gpu-screen-recorder-gtk
grim
grub
gst-plugin-pipewire
gtk-engine-murrine
gufw
helix
htop
hypridle
hyprland
hyprlock
hyprpolkitagent
hyprshot
hyprsunset
imagemagick
intel-ucode
iw
iwd
jp2a
kdenlive
kitty
lazygit-git
libpulse
libxcrypt-compat
linux
linux-firmware
linux-headers
lobster-git
localsend-appimage
mangohud
mesa-utils
mission-center
nano
network-manager-applet
nexusmods-app-bin
nordic-darker-theme-git
nordic-theme-git
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
nvidia-open-dkms
nvidia-settings
nwg-look
obs-studio
oh-my-posh
onlyoffice-bin
opencl-nvidia
openssh
os-prober
otf-fira-code-symbol
otf-font-awesome
pacmanfile
pacseek
pacseek-debug
paru-bin
pavucontrol
pcsx2-git
pipewire
pipewire-alsa
pipewire-jack
pipewire-pulse
polkit-kde-agent
proton-mail
protonup-git
protonup-qt
proton-vpn-gtk-app
python-pip
python-unidecode
qbittorrent
qt5-graphicaleffects
qt5-quickcontrols
qt5-wayland
qt6ct-kde
qt6-wayland
ripgrep
rofi-power-menu
rofi-wayland
rofi-wifi-menu-git
rpcs3-bin
rustup
sassc
sddm
selectdefaultapplication-git
shadps4
slurp
smartmontools
sof-firmware
steam
swaync
swww
teams-for-linux
thunar
thunar-archive-plugin
thunar-media-tags-plugin
thunar-volman
ttf-fira-code
ttf-font-awesome
ttf-kanjistrokeorders
udiskie
uwsm
vlc
vim
vorta
vscodium
waybar-cava
waybar-updates
waypaper
wget
winetricks
wireless_tools
wmctrl
wofi
wpa_supplicant
xdg-desktop-portal-hyprland
xmlstarlet
xorg-server
xorg-xinit
yazi
youtube-music
yubico-authenticator-bin
yubikey-personalization-gui
zen-browser-bin
zip
zoxide
zram-generator
zsh
zsh-autopair-git
zsh-history-substring-search
)

for packages in ${packages[@]}; do
 yay -S --no confirm ${packages}
done

echo "Setup complete! You may want to reboot your system."
