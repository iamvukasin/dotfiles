export ZSH="$HOME/.oh-my-zsh"
export PIPENV_VENV_IN_PROJECT=1

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Enable command auto-correction.
setopt CORRECT
unsetopt CORRECT_ALL

plugins=(git z)

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source $ZSH/oh-my-zsh.sh

# Set up Starship
eval "$(starship init zsh)"

# Set up z
source /opt/homebrew/etc/profile.d/z.sh

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
