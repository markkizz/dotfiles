#!/usr/bin/env zsh

if ! command -v brew
then
  export PATH=$PATH:~/.homebrew/bin
fi

echo "🔨 ==> Installing from Brewfile..."
brew bundle
brew bundle --file ~/dotfiles/Brewfile
echo "✅ ==> Brewfile installed\n"

# [[ command -v brew ]] && brew bundle --file ~/dotfiles/Brewfile

# cd "$(dirname "${BASH_SOURCE[0]}")"

# if [ "$USE_MODULAR_BREWFILE" = true ]
# then
#   source ../utils/install-brewfile.sh

#   sudo chown -R $(whoami) /usr/local/share/man/man8

#   install-brewfile "Browsers" "/Applications/Google Chrome.app"
#   install-brewfile "Terminals" "/Applications/Kitty.app"
#   install-brewfile "Essentials" "/Applications/Keybase.app"
#   install-brewfile "Development" "/Applications/Docker.app"
#   install-brewfile "Productivity" "/Applications/Alfred 4.app"
#   install-brewfile "Fonts" "$HOME/Library/Fonts/JetBrainsMono-Regular.ttf"

#   install-brewfile-cli "Essentials" "exa"
#   install-brewfile-cli "Extras" "tcpdump"

#   exit 0
# fi

# cd ..

# if sha1sum -c Brewfile.sha1
# then
#   echo "👍 Brewfile is already up to date."
# else
#   echo "📦 Installing from brewfile..."
#   brew bundle --global

#   sha1sum Brewfile > Brewfile.sha1
#   echo "✅ Installed brewfile!"
# fi
