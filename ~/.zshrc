export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal-git"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.local/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(fnm env --use-on-cd --shell zsh)"

wsc() {
  if [ -n "$2" ]; then
    wt switch --create "$1" -x yolo -- "$2"
  else
    wt switch --create "$1" -x yolo
  fi
}

alias yolo="claude --dangerously-skip-permissions"
if command -v wt >/dev/null 2>&1; then eval "$(command wt config shell init zsh)"; fi
