#
# ~/.bashrc
#

[[ $- != *i* ]] && return

HISTSIZE=
HISTFILESIZE=

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '


function bb() {
	rsync -avzh \
		  --exclude="/.*" \
		  --exclude="node_modules/" \
		  --exclude="vendor/" \
		  --progress $HOME/ "/run/media/manu/MANU"
}

function rr() {
	rclone copy --progress gdrive: $HOME/Documents
	rclone copy --progress $HOME/Documents gdrive:
}

function rat() {
	cd $(dirname "$1")
	if [[ -d $1 ]]; then
		tar -czvf $(basename "$1").tar.gz "$1"
	elif [[ -f $1 ]]; then
		tar -xzvf "$1"
	fi
	cd -
}

alias ..="cd .."
alias ls='gls -h --color=auto --group-directories-first'
alias ll="ls -Al"
alias l="ls -l"
alias bis="beet import -s"
alias gss="git status -s"
alias grep="ggrep --color -i"
alias t="tree -I node_modules --dirsfirst"
alias n="nnn"
alias ende="trans en:de"
alias deen="trans de:en"
