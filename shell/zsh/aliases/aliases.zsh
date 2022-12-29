# Command upgrades
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"
alias ln="ln -v"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias vi="$HOMEBREW_PREFIX/bin/vim"
alias vim="$HOMEBREW_PREFIX/bin/vim"

# Navigation
alias cdf="cd `osascript -e 'tell application \"Finder\" to if window 1 exists then if target of window 1 as string is not \":\" then get POSIX path of (target of window 1 as alias)'`"
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# Maintenance
alias pid="ps x | grep -i $1"
alias grep="grep --color=auto"
alias aliases="code $DOTFILES/src/shell/zsh/aliases/aliases.zsh"

# Network
alias network.ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias network.iplocal="ipconfig getifaddr en0"
alias network.ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias network.speedtest="speedtest --server-id=2231"
alias network.ping='prettyping --nolegend'
alias ping=network.ping
alias network.flush="dscacheutil -flushcache && sudo killall -HUP mDNSResponder && echo 'DNS flushed'"

# Show / Hide hidden files
alias show.hidden="defaults write com.apple.finder AppleShowAllFiles YES && killall 'Finder'"
alias hide.hidden="defaults write com.apple.finder AppleShowAllFiles NO && killall 'Finder'"

# Utils
alias clean.ds_store="find . -type f -name '*.DS_Store' -ls -delete"
alias clean.node="rm -rf node_modules"
alias clean.npm="clean.node && npm cache verify && npm install"
alias clean.yarn="clean.node && yarn"
alias json="python -mjson.tool"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias cpwd="pwd|tr -d '\n'|pbcopy"
alias ios="open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app"
alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"
