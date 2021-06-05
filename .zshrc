# zmodload zsh/zprof
# tmux temp path
export TMUX_TMPDIR=$HOME/.tmux

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

# this is here to accomodate now-admin os :(
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export PATH="$HOME/.brew/bin:$HOME/.brew/sbin:$PATH"

# pyenv
# PYENV_VERSION=3.7.2
# eval "$(pyenv init -)"

# doing brew --prefix packagename takes .5 seconds... this quickly add up to login time
BREW_PREFIX=/usr/local/opt/

#hey, ho, lets GO
export GOPATH=$HOME/Go
export GOROOT="$BREW_PREFIX/go/libexec"
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# gnu-sed
export PATH="$HOME/.brew/opt/gnu-sed/libexec/gnubin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Android
export PATH=$PATH:/Users/erick.bessa/Library/Android/sdk/tools:/Users/erick.bessa/Library/Android/sdk/platform-tools
export ANDROID_SDK_ROOT=/Users/erick.bessa/Library/Android/sdk
export ANDROID_HOME=/Users/erick.bessa/Library/Android/sdk


# lazyload nvm
load_nvm() {
  unset -f node nvm npm
  BREW_NVM_DIR="$BREW_PREFIX/nvm"
  export NVM_DIR="$HOME/.nvm"
  [ -s "$BREW_NVM_DIR/etc/bash_completion" ] && . "$BREW_NVM_DIR/etc/bash_completion"  # This loads nvm bash_completion
  [ -s "$BREW_NVM_DIR/nvm.sh" ] && . "$BREW_NVM_DIR/nvm.sh"  # This loads nvm
}
nvm() {
  load_nvm
  nvm "$@"
}
npm() {
  load_nvm
  npm "$@"
}
node() {
  load_nvm
  node "$@"
}

# add tmux environments
for f in $HOME/tmux/.tmux*; do
  source $f
done

# Functions
source $HOME/.functions

# LOGGI tools
export PATH=$PATH:/opt/loggi/ops/ansible/bin

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python adb z)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL=
export LDFLAGS="-L$HOME/.brew/opt/zlib/lib"
export CPPFLAGS="-I$HOME/.brew/opt/zlib/include"

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# hide user@hostname
prompt_context(){}

export WORKON_HOME=$HOME/.virtualenvs
export LANG="en_US.UTF-8"

# Python
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=`which python3`
export VIRTUALENVWRAPPER_VIRTUALENV=`which virtualenv`
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo ">>>>NO virtualenv found<<<<"
fi

# Hist
HISTFILESIZE=1000000000
HISTSIZE=1000000000
HISTCONTROL=ignoredups

# time to upgrade `ls`
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)"

# use coreutils `ls` if possible…
hash gls >/dev/null 2>&1 || alias gls="ls"

# always use color, even when piping (to awk,grep,etc)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;
export CLICOLOR_FORCE=1

# ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='gls -lAh ${colorflag} --group-directories-first'
alias lsd='ls | grep "^d"' # only directories


alias g='git'
alias gitst='git st'
alias rmlocalbranch='git tag -l | xargs git tag -d && git fetch'
alias reset-loggi='loggi down && loggi up && loggi setup-dev-db'
alias rshake='adb shell input keyevent 82'
alias rreload='adb shell input keyevent 82 && adb shell input keyevent 19 && adb shell input keyevent 23'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
# Custom cli's
PATH=$HOME/cli:$PATH

# verify cypress
function vcypress() {
  npx cypress cache path
  npx cypress cache list
  npx cypress verify
}
# zprof
