zinit light zsh-users/zsh-completions
if [[ "$TERM_PROGRAM" != "vscode" ]]; then zinit light Aloxaf/fzf-tab; fi
zinit light zsh-users/zsh-autosuggestions
zinit light z-shell/zsh-eza
zinit light MichaelAquilina/zsh-you-should-use
zinit light zsh-users/zsh-syntax-highlighting
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
