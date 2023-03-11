# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -z "$SSH_CONNECTION" ] && ZSH_TMUX_AUTOSTART="true"
ZSH_AUTOSUGGEST_USE_ASYNC="true"
#ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste accept-line)

# Add Antigen
source ~/.zsh/antigen/antigen.zsh
antigen use oh-my-zsh # Add Oh-My-ZSH as an API for plugins and theme

antigen bundles <<EOBUNDLES
command-not-found
colored-man-pages
magic-enter
ssh-agent
extract
#tmux
git
docker docker-compose kubectl
zsh-users/zsh-completions
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
HeroCC/LS_COLORS
rupa/z
EOBUNDLES
antigen theme romkatv/powerlevel10k
source $HOME/.zsh/themes/p10k-lean.zsh
#antigen theme $HOME/.zsh/themes bira-cust --no-local-clone

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

antigen apply # Use it



# Source all the configs
source ~/.zsh/history.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/exports.zsh
if [ -e "$HOME/.zsh/local.zsh" ]; then # If local.zsh exists, source it
  source ~/.zsh/local.zsh
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
