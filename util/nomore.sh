#!/bin/sh
# Remove all .DS_Store files on MacOS, including those ignored by .git
fd -H '^\.DS_Store$' -tf -I /Users/$whoami -x rm