#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

kitty +kitten icat --align left ~/.local/share/kitty/nix.png

eval "$(oh-my-posh init bash --config ~/.config/hypr/scripts/catppuccin.omp.json)"

eval "$(zoxide init bash)"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
export EDITOR=nano
alias "grub-tm"='sudo /home/eve/pak/grub-themes-manager/.env/bin/python3 /home/eve/pak/grub-themes-manager/main.py'
