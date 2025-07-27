# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.  # Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# Lines configured by zsh-newuser-install
eval "$(starship init zsh)"

# source antidote
source ~/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch
unsetopt autocd extendedglob notify
zstyle :compinstall filename '/home/rbruce/.zshrc'


autoload -Uz compinit

alias bat="batcat"
alias ls="eza"
alias python="python3"
alias pip="pip3"
alias grep='grep --color=auto'
alias v="nvim"

# confirm before overwriting something
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

#tmux
alias t="tmux"
alias ts="tmux ls"
alias tn="tmux new -s"
alias ta="tmux a"
alias tat="tmux a -t"

compinit

# fzf key bindings and completion
if [ -f /usr/share/doc/fzf/examples/key-bindings.zsh ]; then
    source /usr/share/doc/fzf/examples/key-bindings.zsh
fi

if [ -f /usr/share/doc/fzf/examples/completion.zsh ]; then
    source /usr/share/doc/fzf/examples/completion.zsh
fi

eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"
