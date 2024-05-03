#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls="ls -F --color=auto -1 --group-directories-first"
PS1="\[\e[1;31m\]┌──[\[\e[m\]\u@\h\[\e[1;31m]\]──[\[\e[m\]\w\[\e[1;31m\]]\[\e[m\]\n\[\e[1;31m\]└─\[\e[m\]>>> "
#PS1="\e[1;31m┌──[\e[m\u@\h\e[1;31m]──[\e[m\w\e[1;31m]\n└─\e[m>>> "

--human-readable --size -1

#Export
export PATH=$PATH:/home/k4n3d4/.spicetify

#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

#Pacman Shortcuts
alias sync="sudo pacman -Syyy"
alias install="sudo pacman -S"
alias update="sudo pacman -Syyu"
alias search="sudo pacman -Ss"
alias search-local="sudo pacman -Qs"
alias pkg-info="sudo pacman -Qi"
alias local-install="sudo pacman -U"
alias clr-cache="sudo pacman -Scc"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias remove="sudo pacman -R"
alias autoremove="sudo pacman -Rns"

#User alias
alias edit="nvim"
alias sedit="sudoedit"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias lsh="ls -A"
alias clr="clear && echo && neofetch"

#Enable starship
#eval "$(starship init bash)"

#Exec at the start
clr
