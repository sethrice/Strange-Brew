# Don't forget your coat, and your aliases!
source $HOME/.aliases
###
# Oh, or your awsume config!
source $HOME/.awsume
###
# Make it so you can find what that command was last month, or week, or year.
# depending on how many times you hit the enter button in the cli.
HISTFILESIZE=100000
###
# Load up that ssh agent like a boss
ssh-add -A &> /dev/null
###
# Uh... Next!
GPG_TTY=$(tty)
export GPG_TTY
###
# Who doesn't like tab completion, esp for brew?
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
###
#
# NOTE: ensure there is a softline for .bash_profile to .bashrc so that this get's added to the user's source and loaded at login.

###
# Perl, whoah old timer, what's that still doing in here!?? That's embarrasing.
#PATH="/Users/batman/perl5/bin${PATH+:}${PATH}"; export PATH;
#PERL5LIB="/Users/batman/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/Users/batman/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/Users/batman/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/Users/batman/perl5"; export PERL_MM_OPT;
#source ~/perl5/perlbrew/etc/bashrc
###
# I mean I couldn't say it better than the in line comments already have. Even if I rememberd what it was for.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
###
# AWSume alias to source the AWSume script
alias awsume="source awsume"
###
# Auto-Complete function for AWSume
_awsume() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$(awsume-autocomplete)
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}
complete -F _awsume awsume
###
# This again!? I should google that, looks important.
export NVM_DIR="$HOME/.nvm"; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
