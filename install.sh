#!/bin/bash

# --- Configuration ---
DOTFILES_REPO_PATH="$HOME/dotfilez"

# --- Script Start ---
echo "Starting dotfiles stowing process..."
# Navigate to the dotfiles repository
if [ ! -d "$DOTFILES_REPO_PATH" ]; then
    echo "Error: Dotfiles repository not found at '$DOTFILES_REPO_PATH'."
    echo "Please ensure you are in the correct directory or adjust DOTFILES_REPO_PATH."
    exit 1
fi
cd "$DOTFILES_REPO_PATH"
echo "Currently in: $(pwd)"

# Explicitly stow each desired dotfile package
echo "Stowing individual dotfile packages..."

# Syntax: stow -v -t <target_directory> <package_name>
# -v: verbose output
# -t $HOME: target directory is your home directory

stow -v -t "$HOME" i3
stow -v -t "$HOME" kitty
stow -v -t "$HOME" nvim
stow -v -t "$HOME" sway
stow -v -t "$HOME" tmux
stow -v -t "$HOME" vim

echo "Dotfiles stowing complete!"
