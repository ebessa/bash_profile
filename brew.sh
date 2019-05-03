#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# bypass system's defaults
brew install git node python python3

# vim with python enabled
brew install vim --with-python3

# Node version manager
brew install nvm

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# good ol' tmux
brew install tmux
brew install reattach-to-user-namespace

# Img libs. used by gifify() at .functions
brew install ffmpeg gifsicle imagemagick

# Some useful binaries
brew install tree
brew install htop
brew install mitmproxy
brew install the_silver_searcher #AKA Ag:

# javascript-able ctags
brew unlink ctags
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

# Casks
brew tap caskroom/cask

# Android development
brew cask install java
brew cask install android-studio
brew cask install android-platform-tools

# react-native
brew cask install react-native-debugger

# GNU core utilities
brew install coreutils

# Fun and fabulous
brew cask install vlc

# I use this to generate pdfs from source code
brew install source-highlight
