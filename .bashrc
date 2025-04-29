# ~/.bashrc

# defaults
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pkgclean='sudo pacman -Rns $(pacman -Qdtq) && hash -r'
alias comfyui='~/.comfyui/launch.sh'

# starship
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_CACHE=~/.config/starship/cache