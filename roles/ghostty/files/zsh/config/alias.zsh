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
alias fetch='fastfetch'; alias ff='fastfetch'

export ipv4=$(ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6 | cut -d/ -f1); alias ipv4="echo '${ipv4}'"
export ipv6=$(ip addr show | grep 'inet6 ' | cut -d ' ' -f6 | sed -n '2p'); alias ipv6="echo '${ipv6}'"
export public_ipv4=$(curl -s https://ifconfig.co/ip -4); alias public_ipv4="echo '${public_ipv4}'"
export public_ipv6=$(curl -s https://ifconfig.co/ip -6); alias public_ipv6="echo '${public_ipv6}'"
