# exa as a replacement of ls
alias ls "exa --header --long -g -t=mod --time-style=long-iso --grid --icons"

# zoxide instead of cd
zoxide init fish | source
alias cd z

# Remove all .DS_Store files
alias nomore "fd -H '^\.DS_Store' -tf -I /Users/$whoami -X rm"

# Clear
alias c "clear"
