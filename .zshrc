# === Ignore config if not run as interactive
[[ $- != *i* ]] && return

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
alias ls='ls --color=auto'
alias grep='grep --color=auto'
