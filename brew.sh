# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Install binaries
brew install git
brew install gradle
brew install node
brew install openssl
brew install python
brew install scrcpy
brew install trash
brew install tree
brew install youtube-dl

# Homebrew Cask
brew tap caskroom/cask

# Install Cask binaries
brew cask install adobe-acrobat-reader
brew cask install aerial
brew cask install alfred
brew cask install android-file-transfer
brew cask install android-platform-tools
brew cask install androidtool
brew cask install appcleaner
brew cask install dropbox
brew cask install flux
brew cask install google-chrome
brew cask install google-photos-backup-and-sync
brew cask install iina
brew cask install iterm2
brew cask install java
brew cask install jetbrains-toolbox
brew cask install keepingyouawake
brew cask install magicprefs
brew cask install raindropio
brew cask install slack
brew cask install sourcetree
brew cask install spectacle
brew cask install sublime-text
brew cask install typora

# Remove outdated versions from the cellar
brew cleanup
