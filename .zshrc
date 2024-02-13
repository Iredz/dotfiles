# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/redz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


# alias for fastfetch
alias ff=fastfetch

# aliases for lsd 
alias l=lsd
alias ll='lsd -l'
alias la='lsd -la'

#aliases for git
alias gi='git init'
alias ga='git add'
alias gs='git status'
alias gl='git log'
alias gc='git commit -m '


eval "$(starship init zsh)"

