source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

PROMPT="manu@towa:%~ $ "

alias zzz="pmset sleepnow"
alias bup="brew update && brew upgrade && brew cleanup"
alias crp="npx storefront create:pattern"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
