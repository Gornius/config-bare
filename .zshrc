# === Add local to path
[[ -d $HOME/.local/bin ]] && PATH=$PATH:$HOME/.local/bin

# === Ignore rest of config if not run as interactive
[[ $- != *i* ]] && return

# === Enable history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# === Load private configs
[[ -d $HOME/.config/.privateconfig ]] && source $HOME/.config/.privateconfig/*

# === Set Vi Mode
bindkey -v

# === Enable Home/End keys
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# === Set prompt
PROMPT=$'%{\e[93m%}$: %{\e[m%}'
RPROMPT=$'%{\e[94m%}%~%{\e[m%}'

# === Autocompletion
autoload -Uz compinit
compinit

# Use menu style
zstyle ':completion:*' menu select

# Match lowercase to uppercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# === Setup aliases
	# = Colors for some commands
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'

	# = Load private aliases
	[[ -f $HOME/.config/private-aliases.sh ]] && source $HOME/.config/private-aliases.sh

	# = Bare repository config
	alias gc="git --git-dir=$HOME/.cfg --work-tree=$HOME"
