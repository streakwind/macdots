# theming
eval "$(oh-my-posh init zsh --config ~/.poshthemes/powerlevel10k_lean.omp.json)"

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS

# plugins 
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(/opt/homebrew/bin/brew shellenv)"

# ssh
alias ssh='ghostty +ssh --'
