# tmux temp path
export TMUX_TMPDIR=$HOME/.tmux

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

#hey, ho, lets GO
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Android
export PATH=$PATH:/Users/erick.bessa/Library/Android/sdk/tools:/Users/erick.bessa/Library/Android/sdk/platform-tools
export ANDROID_SDK_ROOT=/Users/erick.bessa/Library/Android/sdk
export ANDROID_HOME=/Users/erick.bessa/Library/Android/sdk

# nvm
NVM_NODEJS_ORG_MIRROR="https://nodejs.org/dist"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# add tmux environments
for f in $HOME/tmux/.tmux*; do
  source $f
done

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

export WORKON_HOME=$HOME/.virtualenvs
export LANG="en_US.UTF-8"

# Python
export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON='/usr/local/bin/python3'
VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh

# Hist
HISTFILESIZE=1000000000
HISTSIZE=1000000000
HISTCONTROL=ignoredups

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

alias ls='ls -la -G'
alias g='git'
alias gitst='git st'
alias rmlocalbranch='git tag -l | xargs git tag -d && git fetch'
alias reset-loggi='loggi down && loggi up && loggi setup-dev-db'
alias nvmodules='cd /Users/erick.bessa/.nvm/versions/node/v8.4.0/lib/node_modules/'
# alias vim='mvim -v'
alias rshake='adb shell input keyevent 82'
alias rreload='adb shell input keyevent 82 && adb shell input keyevent 19 && adb shell input keyevent 23'

function showcolors {
  for i in {0..255} ; do
    printf "\x1b[38;5;${i}mcolour${i}]\t"
  done
}

function adbtext {
  adb shell input text "$1" && adb shell input keyevent ENTER;
}
function satanas {
  loggi down;
  for e in $(docker images|awk '{print $1}'|grep -v REPOSITORY);do docker pull $e;done;
  loggi up;
  loggi git-hooks;
  loggi fix-keys;
  loggi pip-install -U;
  loggi pip install --upgrade lxml;
}

function go { cd ~/Projects/"$1"; }
function gfs { git flow "$1" start "$2"; }
#gfs [hotfix/feature/etc] start [name]
function gignore { git update-index --assume-unchanged "$1"; }
function gunignore { git update-index --no-assume-unchanged "$1"; }

function get_branch {
    echo $(git rev-parse --abbrev-ref HEAD) #GET CURRENT BRANCH
}

function giall { # update all branches & log local changes
    git co develop && git pu && git co master && git pu && git st;
}

function gff { # git flow finish
    FBRANCH=$(get_branch);
    FTYPE=$(echo "$FBRANCH" | sed 's/\([a-z]*\)\/[a-z0-9_-]*/\1/');
    FNAME=$(echo "$FBRANCH" | sed 's/\([a-z]*\)\/\([a-z0-9_-]*\)/\2/');

    echo "git co develop && git pu && git co master && git pu";
    giall;

    echo "git flow $FTYPE finish $FNAME";
    git flow "$FTYPE" finish "$FNAME";
}

function gmg { # git merge
    FBRANCH=$(get_branch);

    git checkout "$1" && git pull;

    git checkout "$FBRANCH";
    git merge "$1"
}

function gps { # push to origin
    git push origin $(get_branch);
}

function gtag { # create and push tag in the format yymmdd_hhmm
    git checkout master
    DTIME=$(date +"%y%m%d_%H%M");
    echo "Created tag $DTIME. Pushing to remote repository..."
    git tag "$DTIME" && git push origin "$DTIME"
}

export LS_COLORS
