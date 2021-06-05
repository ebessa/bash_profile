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

# Some useful binaries
brew install tree
brew install htop
brew install mitmproxy
brew install the_silver_searcher #AKA Ag:

# javascript-able ctags
brew unlink ctags
brew tap universal-ctags/universal-ctags
brew install --HEAD universal-ctags

# GNU core utilities
brew install coreutils

# Fun and fabulous
brew cask install vlc

# I use this to generate pdfs from source code
brew install source-highlight

# highlight in vim's fzf
brew install highlight

# Go lang
brew install go
go get -u golang.org/x/lint/golint
go get golang.org/x/tools/cmd/godoc

# Shell check
brew install shellcheck
