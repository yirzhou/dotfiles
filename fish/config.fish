# Remove greeting msg
set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH config
if status --is-login
    fish_add_path /Users/yirenzhou/bin/
    fish_add_path /opt/homebrew/bin
    fish_add_path /Users/yirenzhou/.cargo/bin
    fish_add_path /Applications/CMake.app/Contents/bin
    fish_add_path /opt/homebrew/opt/llvm/bin
    fish_add_path "/Applications/Sublime Text.app/Contents/SharedSupport/bin"
end

# Fish should not add things to clipboard when killing
# See https://github.com/fish-shell/fish-shell/issues/772
set FISH_CLIPBOARD_CMD cat

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

