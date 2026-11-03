HISTFILE=~/.cache/.zsh_history
export HISTFILE=$HISTFILE
HISTSIZE=10240
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory hist_ignore_space
setopt hist_ignore_all_dups hist_save_no_dups hist_ignore_dups hist_find_no_dups
setopt auto_cd auto_pushd
alias clrhist='rm -f $HISTFILE; touch $HISTFILE; reset'
