if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/antigen.zsh
source ~/.theme

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

antigen use oh-my-zsh
antigen bundle StackExchange/blackbox
antigen bundle brew
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle docker
antigen bundle docker-compose
antigen bundle git
antigen bundle golang
antigen bundle npm
antigen bundle nvm
antigen bundle python
antigen bundle tmux
antigen theme romkatv/powerlevel10k
antigen apply

[[ -s "/home/chrisprijic/.gvm/scripts/gvm" ]] && source "/home/chrisprijic/.gvm/scripts/gvm"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

alias mfa=~/.aws/get-aws-creds.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias code=code-insiders
export PATH="/home/linuxbrew/.linuxbrew/opt/openjdk@8/bin:$PATH"
eval "$(pyenv init -)"
alias config='/usr/bin/git --git-dir=/home/chrisprijic/.cfg/ --work-tree=/home/chrisprijic'
