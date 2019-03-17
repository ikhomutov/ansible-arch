export ZSH="$HOME/.zsh/oh-my-zsh"

ZSH_THEME='bira'

plugins=(
  celery
  django
  docker
  docker-compose
  git
  kubectl
  postgres
  python
  supervisor
  virtualenv
)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle ':completion:*' rehash true

[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.exports ] && source ~/.exports

stty -ixon
