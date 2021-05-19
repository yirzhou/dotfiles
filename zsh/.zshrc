# Profiling ZSH
zmodload zsh/zprof

# Don't show duplicates in history
export HISTCONTROL=ignoreboth:erasedups

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH="/Applications/CMake.app/Contents/bin":"$PATH"
PATH="/Users/zhouyiren/bin/":"$PATH"

# SOCKS5 proxy port
SOCKS_PORT=7891

# Go Proxy (for use in China)
export GOPROXY=https://goproxy.io

# Turn on Clash
function proxy_on() {
  export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
  export http_proxy="http://127.0.0.1:7890"
  export https_proxy=$http_proxy
  #export all_proxy=socks5://127.0.0.1:7890 # or this line
  echo -e "已开启代理"
}

# Turn off Clash
function proxy_off() {
  unset http_proxy
  unset https_proxy
  echo -e "已关闭代理"
}

export GOPATH="/Users/zhouyiren/go/"

# Path to your oh-my-zsh installation.
export ZSH="/Users/zhouyiren/.oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"

# Interactive mv and rm
alias mv='mv -i'
alias rm='rm -i'

# Python 3.9
alias python="/usr/local/bin/python3"

# Remove all .DS_Store files
alias nomore="fd -H '^\.DS_Store$' -tf -I /Users/$whoami -X rm"
# alias nomore="find /Users/zhouyiren/ -type f -name .DS_Store -print0 | xargs -0 rm"

# Use neovim by default
EDITOR='nvim'
alias vim=nvim

# Use exa instead of ls
alias ls="exa --header --long -g -t=mod --time-style=long-iso --grid --icons"

HIST_STAMPS="mm/dd/yyyy"

# User configuration
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# starship
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"
eval "$(starship init zsh)"

# zsh plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#b5b5b5,bg=underline"

# Lazily load NVM
declare -a NODE_GLOBALS=($(find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq))

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm() {
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}

for cmd in "${NODE_GLOBALS[@]}"; do
  eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done

export PATH="/usr/local/opt/llvm/bin:$PATH"

# Launch tmux on stratup
# if command -v tmux &>/dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux
# fi
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/
