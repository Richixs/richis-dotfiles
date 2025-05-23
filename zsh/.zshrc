typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
ZSH_DISABLE_COMPFIX=true

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# plugins 
plugins=(git)

# source
source ~/.powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh-plugins/oh-my-zsh/oh-my-zsh.sh
source ~/.zsh-plugins/zsh-sudo/sudo.plugin.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# alias
alias ls='lsd'

# color
ZSH_HIGHLIGHT_STYLES[arg0]='fg=105'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
