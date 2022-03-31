export DOTFILES_PATH=$HOME/.dotfiles

source $DOTFILES_PATH/terminal/init.sh
source $DOTFILES_PATH/terminal/bash/themes/codelytv.sh

# source /usr/local/opt/fzf/shell/key-bindings.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
