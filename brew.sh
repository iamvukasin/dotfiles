#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install the latest version of zsh.
brew install zsh

# Switch to using brew-installed zsh as default shell.
if ! fgrep -q "${BREW_PREFIX}/bin/zsh" /etc/shells; then
  echo "${BREW_PREFIX}/bin/zsh" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/zsh";
fi;

# Install Oh My Zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install useful binaries.
brew install asimov
brew install exiftool
brew install git
brew install htop
brew install imagemagick
brew install mackup
brew install node
brew install pipenv
brew install python
brew install rename
brew install starship
brew install tldr
brew install trash
brew install tree
brew install wget
brew install youtube-dl
brew install z

# Install Cask binaries.
brew install --cask 1password
brew install --cask aerial
brew install --cask appcleaner
brew install --cask brave-browser
brew install --cask dropbox
brew install --cask fig
brew install --cask flux
brew install --cask glance
brew install --cask google-chrome
brew install --cask iina
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask karabiner-elements
brew install --cask keepingyouawake
brew install --cask raindropio
brew install --cask raycast
brew install --cask rectangle
brew install --cask sourcetree
brew install --cask sublime-text
brew install --cask visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup

# Run services.
sudo brew services start asimov
