# exa as a replacement of ls
alias ls "exa --header --long -g -t=mod --time-style=long-iso --grid --icons"

# zoxide instead of cd
zoxide init fish | source
alias cd z

alias vim="nvim"

# Remove all .DS_Store files
alias nomore "fd -H '^\.DS_Store' -tf -I /Users/$whoami -X rm"

alias rm="trash"

alias cb="pbcopy"

# Clear
alias c "clear"

# Reload config
alias reload="source $HOME/.config/fish/config.fish"