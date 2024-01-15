HISTFILE=~/.zsh_history
HISTSIZE=999
SAVEHIST=999
zstyle :compinstall filename '/home/cosmo/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/shellconf/*

eval "$(starship init zsh)"

RPROMPT='%F{8}⎇ $vcs_info_msg_0_%f'

#ZSH_THEME="random"

#plugins=(
#    colored-man-pages # Add colors to man pages
#    command-not-found # Provide suggested packages to be installed if a command cannot be found
#    git # git aliases and functions
#    rust
#    zsh-autosuggestions
#    zsh-syntax-highlighting
#)
