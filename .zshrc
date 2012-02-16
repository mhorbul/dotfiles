# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="robbyrussell"
export ZSH_THEME="eastwood"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# RVM
unsetopt auto_name_dirs
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Customize to your needs...
export PATH=/usr/local/bin:$PATH
export EDITOR=emacs

alias git="nocorrect git"

alias vagrant="nocorrect vagrant"
alias v="vagrant"
alias vp="vagrant provision "
alias vs="vagrant ssh "

alias alias knife="nocorrect knife"
alias ks="knife ssh -a name"
alias ksn="knife search node"
alias knr="knife node run_list"

