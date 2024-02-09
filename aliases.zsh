#!/bin/zsh

# Replace stuff with bat
alias cat='bat '
alias rg='batgrep '

#iso and version used to install XeroLinux
alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

#systeminfo
alias probe='sudo -E hw-probe -all -upload'

# Replace ls with eza
alias ls='eza --color=always --group-directories-first --icons'  # preferred listing
alias la='eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first --icons'  # long format
alias lt='eza -aT --color=always --group-directories-first --icons' # tree listing
alias l='eza -lah --color=always --group-directories-first --icons' # tree listing

#pacman unlock
alias unlock='sudo rm /var/lib/pacman/db.lck'

#available free memory
alias free='free -mt'

#continue download
alias wget='wget -c '

#readable output
alias df='df -h'

#userlist
alias userlist='cut -d: -f1 /etc/passwd'

#Pacman for software managment
alias upall='topgrade'
alias remove='sudo pacman -R '
alias install='sudo pacman -S '
alias linstall='sudo pacman -U *.pkg.tar.zst'
alias update='sudo pacman -Syyu && flatpak upgrade && paru -Syyu'
alias clrcache='sudo pacman -Scc'
alias orphans='sudo pacman -Rns $(pacman -Qtdq)'

# Paru/Yay stuff
alias pget='paru -S '
alias yget='yay -S '
alias yrem='yay -R '
alias prem='paru -R '
alias yup='yay -Syyu'
alias pup='paru -Syyu'
alias porphans='paru -Rns $(paru -Qtdq)'

#Bash aliases
alias mkfile='touch '
alias jctl='journalctl -p 3 -xb'
alias breload='cd ~ && source ~/.bashrc'
alias zreload='cd ~ && clear && source ~/.zshrc'
alias pingme='ping -c64 github.com'
alias cls='clear'
alias traceme='traceroute github.com'
alias ..='cd ..'

#hardware info --short
alias hw='hwinfo --short'

#youtube-dl
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias ytv-best="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 "

#GiT  command
alias gcl='git clone '
alias gpl='git pull'
alias gs='git status'

#  Neovim
alias vim='nvim'

#Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scpd='sudo cp -R'
alias rmrf='rm -rf'
alias rmr='rm -r'

#cd/ aliases
alias cd='z '
alias comp='cd ~/apcompsci'
alias blog="cd ~/apcompsci/'first website'/blog"
alias home='cd ~'
alias etc='cd /etc/'
alias conf='cd ~/.config'
alias downs='cd ~/Downloads'
alias lapps='cd ~/.local/share/applications'
alias nvimconf='cd ~/.config/nvim'

#backlight
alias backdim=' brillo -q -U 100'
alias backlow=' brillo -q -U 10'
alias backup=' brillo -q -A 10'
alias backhigh=' brillo -q -A 100'

#verify signature for isos
alias gpg-check='gpg2 --keyserver-options auto-key-retrieve --verify'

#receive the key of a developer
alias gpg-retrieve='gpg2 --keyserver-options auto-key-retrieve --receive-keys'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Package Info
alias info='sudo pacman -Si '
alias infox='sudo pacman -Sii '

##Refresh Keys
alias rkeys='sudo pacman-key --refresh-keys'

### HBLOCK Stuff

alias hblock="sudo hblock"
alias unhblock="hblock -S none -D none"

### Building & Installing

alias mkinstall='makepkg -rsi --noconfirm'

#shutdown or reboot
alias srn='sudo reboot'
alias ssn='sudo shutdown now'

#nano
#alias nz='$EDITOR ~/.zshrc'
#alias nbashrc='nano ~/.bashrc'
#alias nzshrc='nano ~/.zshrc'
#alias nsddm='sudo nano /etc/sddm.conf'
#alias pconf='sudo nano /etc/pacman.conf'
#alias mkpkg='sudo nano /etc/makepkg.conf'
#alias ngrub='sudo nano /etc/default/grub'
#alias smbconf='sudo nano /etc/samba/smb.conf'
#alias nlightdm='sudo $EDITOR /etc/lightdm/lightdm.conf'
#alias nmirrorlist='sudo nano /etc/pacman.d/mirrorlist'
#alias nsddmk='sudo $EDITOR /etc/sddm.conf.d/kde_settings.conf'

alias pi='ssh cosmo@192.168.0.105'

# Path management
alias add-path='export PATH=$PATH:'

# BLAHAJ
alias blahaj='display3d ~/blahaj.obj -t 0,0,5.5'

# please was moved into the main file :)
