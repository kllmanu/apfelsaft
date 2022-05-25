source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/etc/profile.d/autojump.sh

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
	autoload -Uz compinit
	compinit
fi

PROMPT="manu@towa:%~ $ "

function cdr() {
	[[ -z "$1" ]] || cd ~/Desktop/towa && jc $1

	cd $(wp config get root_dir)
}

function cdt() {
	[[ -z "$1" ]] || cd ~/Desktop/towa && jc $1

	cd $(wp config get root_dir)/web/app/themes/towa-theme
}


alias ..="cd .."
alias ls="gls -gGlh --color --group-directories-first -I node_modules -I vendor"
alias l="ls"
alias ll="ls -A"
alias t="tree -I node_modules -I vendor --dirsfirst"
alias tt="tree -a"
alias zzz="pmset sleepnow"
alias gss="git status -s"
alias bup="brew update && brew upgrade && brew cleanup"
alias crp="npx storefront create:pattern"
alias d="cd ~/Desktop"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/Desktop:$PATH"
