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

cd "$DOTFILES_REPO_PATH" || exit 1

# Explicitly stow each desired dotfile package
echo "Stowing individual dotfile packages..."

# Syntax: stow -v -t <target_directory> <package_name>
stow -v i3 kitty nvim vim sway tmux

echo "Dotfiles stowing complete!"

