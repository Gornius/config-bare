# === Add local to path
[[ -d $HOME/.local/bin ]] && PATH=$PATH:$HOME/.local/bin

# === Ignore rest of config if not run as interactive
[[ $- != *i* ]] && return

# === Load private configs
[[ -d $HOME/.config/.privateconfig ]] && source $HOME/.config/.privateconfig

# === Set Vi Mode
bindkey -v

# === Enable Home/End keys
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# === Set prompt
PROMPT='%F{11}$: %f%'
RPROMPT='%F{13}%~%f%'

# === Autocompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# === Setup aliases
	# = Colors for some commands
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'

	# = Bare repository config
	alias gc="git --git-dir=$HOME/.cfg --work-tree=$HOME"
