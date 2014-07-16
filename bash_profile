## -------------------------------------
##   Imports
## -------------------------------------

source ~/.bash/vars
source ~/.bash/config
source ~/.bash/aliases
source ~/.bash/completions/git.bash
source ~/.bash/functions/general
source ~/.bash/functions/mvcss
source ~/.bash/prompt

## -------------------------------------
##   rbenv
## -------------------------------------

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
