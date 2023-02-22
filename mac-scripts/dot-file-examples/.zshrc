source $HOME/.aliases
source $HOME/.awsume
HISTSIZE=99999
HISTFILESIZE=999999
SAVEHIST=$HISTSIZE
ssh-add -A &> /dev/null

GPG_TTY=$(tty)
export GPG_TTY

bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line

eval "$(/opt/homebrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#AWSume alias to source the AWSume script
alias awsume="source awsume"

#Auto-Complete function for AWSume
fpath=(~/.awsume/zsh-autocomplete/ $fpath)
export PATH="/opt/homebrew/bin:$PATH"
export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export SSLKEYLOGFILE=~/.tls-key.log
export TLSKEYLOGFILE=~/.tls-key.log
export SSHKEYLOGFILE=~/.ssh-key.log