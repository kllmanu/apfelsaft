source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/etc/profile.d/autojump.sh

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

PROMPT="manu@towa:%~ $ "

alias ls="ls -l"
alias l="ls"
alias ll="ls -a"
alias zzz="pmset sleepnow"
alias bup="brew update && brew upgrade && brew cleanup"
alias crp="npx storefront create:pattern"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
