# ~/.zshrc
# prioritizes using brew packages instead of mac defaults like git.
export PATH="/usr/local/bin:${PATH}"

# starship
export STARSHIP_CONFIG=~/.config/starship.toml
eval "$(starship init zsh)"

# NVM (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Git
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gd="git diff -w"
alias gds="git diff -w --staged"
alias gl="git log --pretty=format:'%C(red)%d%Creset %C(yellow)%h%Creset %s' --graph --abbrev-commit"
alias glog="git log --pretty=format:'%C(red)%d%Creset %C(yellow)%h%Creset %s' --graph --abbrev-commit"
alias gpro="git pull --rebase origin master"
alias gpru="git pull --rebase upstream master"
alias gr="git remote"
alias gst="git status"

# Autocomplete (history look up using up/down arrow keys)
# https://www.reddit.com/r/zsh/comments/c065uw/moving_from_bash_to_zsh_looking_for_history_lookup/erdy3bu/?utm_source=share&utm_medium=web2x
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

zmodload zsh/terminfo
bindkey $terminfo[kcuu1] up-line-or-beginning-search
bindkey $terminfo[kcud1] down-line-or-beginning-search

if (( $+terminfo[smkx] && $+terminfo[rmkx] )); then
  function enable-term-application-mode() { echoti smkx }
  function disable-term-application-mode() { echoti rmkx }
  zle -N enable-term-application-mode
  zle -N disable-term-application-mode
  autoload -Uz add-zle-hook-widget
  add-zle-hook-widget line-init enable-term-application-mode
  add-zle-hook-widget line-finish disable-term-application-mode
fi
