HISTFILE=~/.zsh_history
HISTSIZE=999
SAVEHIST=999
zstyle :compinstall filename '/home/cosmo/.zshrc'

autoload -Uz compinit
compinit

#Path to Functions and Plugins
export ZSH=/usr/share/zsh
fpath=($ZSH/functions $ZSH/site-functions $fpath)

#Source ZSH Plugins
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

source ~/aliases.zsh

eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

alias please='sudo $(fc -ln -1)'
alias cls='clear && fastfetch --logo ~/art'

[ -f ~/.bashrc ] && echo -e '\nexport GPG_TTY=$(tty)' >> ~/.bashrc

fastfetch --logo ~/art
