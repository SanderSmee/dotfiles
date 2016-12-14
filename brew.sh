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
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install vbindiff
brew install webkit2png
brew install zopfli

# Install fullstack tools
brew install bash-git-prompt
brew install curl
brew install git-extras
brew install git-flow-avh
brew install gnupg2
brew install gpg-agent
brew install jenv
brew install maven
brew install maven-completion
brew install node4-lts
brew install openssl

# Other tools
brew install exiftool
brew install jasper

# Macos apps
brew tap caskroom/cask
brew install caskroom/cask/atom
brew install caskroom/cask/dropbox
# brew install caskroom/cask/duet
brew install caskroom/cask/flux
brew install caskroom/cask/franz
brew install caskroom/cask/google-chrome
brew install caskroom/cask/growl
brew install caskroom/cask/intellij-idea
brew install caskroom/cask/istat-menu
brew install caskroom/cask/iterm2
brew install caskroom/cask/java
# brew install caskroom/cask/java-7
brew install caskroom/cask/sourcetree
brew install caskroom/cask/tunnelblick
# brew install caskroom/cask/virtualbox

# Macos quicklook plugins
brew install caskroom/cask/qlcolorcode
brew install caskroom/cask/ttscoff-mmd-quicklook
brew install caskroom/cask/
brew install caskroom/cask/
brew install caskroom/cask/
brew install caskroom/cask/
brew install caskroom/cask/

# Remove outdated versions from the cellar.
brew cleanup
