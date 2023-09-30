# Antigen config
source /usr/share/zsh-antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen theme agnoster #you need to install powerline fonts for this theme (apt-get install powerline)
antigen apply

# Source all the configs
source ~/.zsh/history.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/exports.zsh
if [ -e "$HOME/.zsh/local.zsh" ]; then # If local.zsh exists, source it
  source ~/.zsh/local.zsh
fi
