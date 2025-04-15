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

# Install packages by category
echo "Installing blueve hyprland..."
for package in "${PACKAGES[@]}"; do
yay -S --noconfirm ${PACKAGES}
done

# Enable services
echo "Enabling $service..."
    sudo systemctl enable "$service"
  else
    echo "$service is already enabled"
  fi
done

echo "Setup complete! You may want to reboot your system."
