# ~/.bashrc

# defaults
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# starship
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
export STARSHIP_CACHE=~/.config/starship/cache