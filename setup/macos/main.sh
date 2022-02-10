#!/bin/bash

echo "==> Preferences"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Close any open `System Preferences` panes in order to
# avoid overriding the preferences that are being changed.

osascript -e 'tell application "System Preferences" to quit'

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

source "${DOTFILES}/setup/macos/activity_monitor.sh"
source "${DOTFILES}/setup/macos/app_store.sh"
source "${DOTFILES}/setup/macos/calendar.sh"
source "${DOTFILES}/setup/macos/dock.sh"
source "${DOTFILES}/setup/macos/finder.sh"
source "${DOTFILES}/setup/macos/keyboard.sh"
source "${DOTFILES}/setup/macos/language_and_region.sh"
source "${DOTFILES}/setup/macos/mail.sh"
source "${DOTFILES}/setup/macos/photos.sh"
source "${DOTFILES}/setup/macos/safari.sh"
source "${DOTFILES}/setup/macos/screen.sh"
source "${DOTFILES}/setup/macos/textedit.sh"
source "${DOTFILES}/setup/macos/trackpad.sh"
source "${DOTFILES}/setup/macos/tweetbot.sh"
source "${DOTFILES}/setup/macos/ui_and_ux.sh"
