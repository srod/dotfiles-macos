prepend-path() {
  [ -d $1 ] && PATH="$1:$PATH"
}

prepend-path "$DOTFILES/bin"

# Remove duplicates (preserving prepended items)
# Source: http://unix.stackexchange.com/a/40755
PATH=$(echo -n $PATH | awk -v RS=: '{ if (!arr[$0]++) {printf("%s%s",!ln++?"":":",$0)}}')

export PATH
