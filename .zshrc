# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"
#export ZSH_THEME="eastwood"
export ZSH_THEME="dpree"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

alias grpull='git pull --rebase origin $(current_branch)'

source $ZSH/oh-my-zsh.sh

# RVM
unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Customize to your needs...
export PATH=/usr/local/bin:$PATH

# emacs
export EDITOR="emacsclient -t --alternate-editor=''"
alias e=$EDITOR
#alias emacs=e

# git
alias git="nocorrect git"
alias g=git

# vagrant
alias vagrant="nocorrect vagrant"
alias v="vagrant"
alias vp="vagrant provision"
alias vs="vagrant ssh"

# knife & chef
alias knife="nocorrect knife"
alias ks="knife ssh -a name"
alias ksn="knife search node"
alias knr="knife node run_list"

alias kl="CHEF_USER=vagrant knife"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

compdef -d git

[ -z "$TMUX" ] && export TERM=xterm-256color

[ -f $HOME/.dotfiles.secure/api-keys ] && . $HOME/.dotfiles.secure/api-keys
