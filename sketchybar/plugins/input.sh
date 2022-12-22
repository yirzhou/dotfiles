#!/usr/bin/env sh

SOURCE=$(defaults read "~/Library/Preferences/com.apple.HIToolbox.plist" AppleCurrentKeyboardLayoutInputSourceID)

case ${SOURCE} in
'com.apple.keylayout.ABC') LABEL='A' ;;
'com.apple.keylayout.WubixingKeyboard') LABEL='五' ;;
'com.apple.keylayout.PinyinKeyboard') LABEL='拼' ;;
esac
    r
sketchybar --set $NAME label="$LABEL"
