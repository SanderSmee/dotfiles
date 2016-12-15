#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff

# Install fullstack tools
brew install bash-git-prompt
brew install curl
brew install git-extras
brew install git-flow-avh
brew install gnupg2
brew install gpg-agent
brew install jenv
brew install maven
brew install homebrew/completions/maven-completion
brew install node4-lts
brew install openssl

# Other tools
# brew install exiftool
# brew install jasper

brew tap caskroom/cask

# Security
brew cask install oversight
brew cask install lockdown
brew cask install blockblock

# Macos apps
brew cask install atom
brew cask install bettertouchtool
brew cask install dropbox
# brew cask install duet
brew cask install flux
brew cask install franz
brew cask install gitkraken
brew cask install google-chrome
brew cask install gpgtools
# brew cask install growlnotify
brew cask install intellij-idea
brew cask install istat-menus
brew cask install iterm2
brew cask install java
# brew install caskroom/versions/java-7
# brew cask install sourcetree
brew cask install tunnelblick
brew cask install virtualbox

# Macos quicklook plugins
brew cask install qlcolorcode
brew cask install qlmarkdown

# Remove outdated versions from the cellar.
brew cleanup
