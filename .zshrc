source /home/eve/zsh-plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/zsh-plugins/.zsh-autopair/autopair.zsh
source /home/eve/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/eve/zsh-plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# zsh-history keybind
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export EDITOR=nano
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/hypr/scripts/sonicboom_dark.omp.json)"
