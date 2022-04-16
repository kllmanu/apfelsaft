source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/etc/profile.d/autojump.sh

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
	autoload -Uz compinit
	compinit
fi

PROMPT="manu@towa:%~ $ "

alias ls="gls -gGlh --color --group-directories-first -I node_modules -I vendor"
alias l="ls"
alias ll="ls -A"
alias t="tree -I node_modules -I vendor --dirsfirst"
alias tt="tree -a"
alias zzz="pmset sleepnow"
alias bup="brew update && brew upgrade && brew cleanup"
alias crp="npx storefront create:pattern"
alias ..="cd .."

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
