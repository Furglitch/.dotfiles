# init
autoload -Uz compinit && compinit
autoload -U colors && colors
export PATH="$HOME/.local/bin:$PATH"
export EDITOR='nano'

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname "$ZINIT_HOME")"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"
zinit cdreplay -q

# themes
zinit ice depth=1; zinit light starship/starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"

# plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab
zinit light z-shell/zsh-eza
zinit light zsh-users/zsh-syntax-highlighting
zinit light MichaelAquilina/zsh-you-should-use
zinit snippet OMZP::archlinux; alias parorph='pacrmorphans'
zinit snippet OMZP::aliases
zinit snippet OMZP::colored-man-pages
zinit snippet OMZP::command-not-found
zinit snippet OMZP::ssh
zinit snippet OMZP::sudo
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no 
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
## tool-specific plugins
zinit snippet OMZP::ansible
zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit snippet OMZP::git
zinit snippet OMZP::github
zinit snippet OMZP::gradle
zinit snippet OMZP::pip
zinit snippet OMZP::pre-commit
zinit snippet OMZP::python
zinit snippet OMZP::terraform
zinit snippet OMZP::thefuck
zinit snippet OMZP::uv
zinit snippet OMZP::vscode

# keybinds
bindkey -e
bindkey '^H' backward-kill-word  # ctrl-backspace to delete previous word
bindkey '^[[3;5~' kill-word      # ctrl-delete to delete next word

# aliases
alias cat='bat'
autoload -Uz zmv; alias mv='zmv'
alias clr='clear'
alias cp='rsync -ah --info=progress2'
alias mkdir='mkdir -pv'
alias grep='grep --color=auto'
alias chown='chown -v --preserve-root'
alias chmod='chmod -v --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmox="chmod +x --preserve-root"
alias bdup='command -v betterdiscord-update >/dev/null 2>&1 && betterdiscord-update || betterdiscordctl reinstall'

# system info
alias fetch='fastfetch'; alias ff='fastfetch'
export ipv4=$(ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6 | cut -d/ -f1); alias ipv4="echo '${ipv4}'"
export ipv6=$(ip addr show | grep 'inet6 ' | cut -d ' ' -f6 | sed -n '2p'); alias ipv6="echo '${ipv6}'"
export public_ipv4=$(curl -s https://ifconfig.co/ip -4); alias public_ipv4="echo '${public_ipv4}'"
export public_ipv6=$(curl -s https://ifconfig.co/ip -6); alias public_ipv6="echo '${public_ipv6}'"

# history
HISTFILE=~/.cache/.zsh_history
export HISTFILE=$HISTFILE
HISTSIZE=10240
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory hist_ignore_space 
setopt hist_ignore_all_dups hist_save_no_dups hist_ignore_dups hist_find_no_dups
setopt auto_cd auto_pushd
alias clrhist='rm -f $HISTFILE; touch $HISTFILE; reset'