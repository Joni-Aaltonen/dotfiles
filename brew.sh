#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg
brew install gnupg2 
brew install pinentry-mac


# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2


#Install node
brew install nvm
brew install node

#Install fish
brew install fish
curl -L https://get.oh-my.fish | fish
sudo echo /usr/local/bin/fish >> /etc/shells
chsh -s /usr/local/bin/fish

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz
brew install mysql

# Install Heroku
brew install heroku-toolbelt
heroku update

# Install other useful binaries.
brew install ack
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
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Install Cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Core casks
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java8
brew cask install --appdir="~/Applications" xquartz

# Development tool casks
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" macdown

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" apptivate
brew cask install --appdir="/Applications" bartender
brew cask install --appdir="/Applications" boom
brew cask install --appdir="/Applications" apptivate
brew cask install --appdir="/Applications" dash
brew cask install --appdir="/Applications" discord
brew cask install --appdir="/Applications" divvy
brew cask install --appdir="/Applications" fabric
brew cask install --appdir="/Applications" kaleidoscope
brew cask install --appdir="/Applications" keka
brew cask install --appdir="/Applications" paw
brew cask install --appdir="/Applications" sketch
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" tower
brew cask install --appdir="/Applications" transmission
brew cask install --appdir="/Applications" transmit
brew cask install --appdir="/Applications" cyberduck
brew cask install --appdir="/Applications" twitter
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" karabiner-elements
brew cask install --appdir="/Applications" intellij-idea
brew cask install --appdir="/Applications" airmail
brew cask install --appdir="/Applications" spamsieve


#Install Android Studio
brew cask install --appdir="~/Applications" android-studio

#Install nerd fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

brew install android-sdk


#install nvm and node
brew install nvm
echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.bash_profile
nvm install stable
npm install -g npm@latest

brew install yarn --without-node


# Remove outdated versions from the cellar.
brew cleanup

#NPM Essentials
npm install -g grunt-cli
npm install -g jshint
npm install -g less

#Install cocoapods
sudo gem install cocoapods

