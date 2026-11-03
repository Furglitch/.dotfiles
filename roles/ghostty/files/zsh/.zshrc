# init
autoload -Uz compinit && compinit
autoload -U colors && colors
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"
export EDITOR='nvim'

# zinit
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname "$ZINIT_HOME")"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "$ZINIT_HOME/zinit.zsh"
zinit cdreplay -q

for rc in ~/.config/zsh/*.zsh(N); do
    source "$rc"
done

if [[ -o interactive && ${TERM_PROGRAM:-} != vscode && -z ${VSCODE_INJECTION:-} ]]; then
  fastfetch
  echo
  echo
fi
