
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases bruh
alias reboot='sudo reboot'
alias shutdown='sudo shutdown -P now'
alias network='nmcli'
alias ls='ls -a --color=auto --color=auto'

export PATH=$PATH:/home/aid3n/.spicetify
