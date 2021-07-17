# Remove greeting msg
set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# PATH config
if status --is-login
    fish_add_path /Users/zhouyiren/bin/
    fish_add_path /Users/zhouyiren/.cargo/bin
    fish_add_path /Applications/CMake.app/Contents/bin
    fish_add_path /usr/local/opt/llvm/bin
end

# Fish should not add things to clipboard when killing
# See https://github.com/fish-shell/fish-shell/issues/772
set FISH_CLIPBOARD_CMD cat
