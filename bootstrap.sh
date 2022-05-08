#!/usr/bin/env zsh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

doIt() {
    rsync --exclude ".git/" \
        --exclude "assets/" \
        --exclude "init/" \
        --exclude ".DS_Store" \
        --exclude "bootstrap.sh" \
        --exclude "brew.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        -avh --no-perms . ~;
    source ~/.zshrc;
}

if [ "$1" = "--force" -o "$1" = "-f" ]; then
    doIt;
else
    read -k "?This may overwrite existing files in your home directory. Are you sure? (y/n) ";
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
