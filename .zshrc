# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# some default configure for zsh
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# completion
#autoload -U compinit
#zstyle ':completion:*' menu select
#zmodload zsh/complist
#compinit
#_comp_options+=(globdots)		# Include hidden files.









# completions testing area

source /home/mahmoud/zsh-plugins/completion.zsh

export EDITOR="nvim"
export VISUAL="nvim"


# Aliases
# ----->>> !!! thier is no spaces when you write an alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pacinstall='sudo pacman -S'
alias pacremove='sudo pacman -R'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot'
alias upgrade='sudo pacman -Syu'
alias cpf='copyfile'
alias cpd='copypath'
alias nd='neovide'


# --->> plugins section 

# loading powerlevel10
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh-syntax-highlighting
source /home/mahmoud/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autosuggestions
source /home/mahmoud/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# changing the cursor mode in vi-mode zsh
# cursor_mode plugin
source /home/mahmoud/zsh-plugins/cursor_mode.zsh

# zsh copypath 
source /home/mahmoud/zsh-plugins/copypath.plugin.zsh

# zsh-websearch
source /home/mahmoud/zsh-plugins/web_search.zsh
 
# zsh-sudo-plugin
source /home/mahmoud/zsh-plugins/sudo.plugin.zsh

# zsh-copyfile-plugin
source /home/mahmoud/zsh-plugins/copyfile.plugin.zsh


# dealing with fzf
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh






