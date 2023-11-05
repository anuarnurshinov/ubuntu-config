#Конфиг ZSH
export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'

# Для Nvim Java LSP
export JAVA_HOME="/usr/lib/jvm/jdk-21-oracle-x64"
export PATH=$JAVA_HOME/bin:$PATH

ZSH_THEME="half-life"

plugins=(
    zsh-vi-mode
    z
    git
    zsh-autosuggestions
    fzf-zsh-plugin
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# tmux
case $- in *i*)
    [ -z "$TMUX" ] && exec tmux
esac

#ssh-add -l |grep -q `ssh-keygen -lf .ssh/id_rsa  | awk '{print $2}'` || ssh-add /path/to/special_key


alias tmux="tmux -2"

LS_COLORS="$LS_COLORS:ow=103;30;01"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Function to create and move to dir
export PATH=$PATH:/usr/local/lib
export PATH=/usr/local/lib/nodejs/node-v18.18.2-linux-x64/bin:$PATH
export PATH=/usr/local/lib/apache-maven-3.9.5/bin:$PATH

