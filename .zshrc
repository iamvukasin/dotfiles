. "$HOME/.fig/shell/zshrc.pre.zsh"

export ZSH="$HOME/.oh-my-zsh"
export PIPENV_VENV_IN_PROJECT=1

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(git)

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,aliases,functions,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

. "$HOME/.fig/shell/zshrc.post.zsh"
