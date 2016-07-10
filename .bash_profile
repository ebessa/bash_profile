export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

#hey, ho, lets GO
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

alias ls='ls -la -G'
alias g='git'
alias gitst='git st'
alias rmlocalbranch='git tag -l | xargs git tag -d && git fetch'

function go { cd ~/Projects/"$1"; }
function gfs { git flow "$1" start "$2"; } #$ gfs [hotfix/feature/etc] start [name]
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
export -f gignore
export -f gunignore
