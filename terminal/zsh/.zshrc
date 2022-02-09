# Uncomment for debuf with `zprof`
# zmodload zsh/zprof

export DOTFILES_PATH=$HOME/.dotfiles
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.dotfiles/modules/zimfw

# ZSH Ops
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FCNTL_LOCK
# setopt autopushd

# Start zim
source ${ZIM_HOME}/init.zsh

# Async mode for autocompletion
ZSH_AUTOSUGGEST_USE_ASYNC=true
ZSH_HIGHLIGHT_MAXLENGTH=300

source $DOTFILES_PATH/terminal/init.sh

fpath=("$DOTFILES_PATH/terminal/zsh/themes" "$DOTFILES_PATH/terminal/zsh/completions" $fpath)

autoload -Uz promptinit && promptinit
prompt codelytv

source $DOTFILES_PATH/terminal/zsh/key-bindings.zsh

META_REPOSITORY_PATH=/home/dtome/Workspace/sred/meta
if [ ! -d $META_REPOSITORY_PATH ]
then
    echo "WARNING: Meta repo cannot be found!"
    echo "Clone meta repo: git clone ssh://git@10.40.32.1:2022/sre/meta.git"
    echo " and set its path to META_REPOSITORY_PATH variable."
fi

PATH="$PATH:$META_REPOSITORY_PATH/bin:$META_REPOSITORY_PATH/git/sred/bin:$META_REPOSITORY_PATH/git/gitlab/bin:$META_REPOSITORY_PATH/git/bin"
export PATH

GITLAB_API_KEY="MQwVP1mw7YUiPkbzYzeK"
export GITLAB_API_KEY
