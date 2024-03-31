#!/bin/bash

# Function to check the existence of a file or directory
check_existence() {
    if [ -e "$1" ]; then
        return 0  # Exists
    else
        return 1  # Does not exist
    fi
}

# Function to execute the "mv" command if the source exists
move_if_exists() {
    if check_existence "$1"; then
        mv "$1" "$2"
        echo "The file or directory $1 has been moved to $2"
    else
        echo "The file or directory $1 does not exist, so it was not moved."
    fi
}

# Execute the "mv" commands after verifying the existence of the source files/directories
move_if_exists ~/.bashrc ~/.bashrc.bak
move_if_exists ~/.zshrc ~/.zshrc.bak
move_if_exists ~/.config/btop ~/.config/btop.bak
move_if_exists ~/.config/neofetch ~/.config/neofetch.bak
move_if_exists ~/.config/htop ~/.config/htop.bak
move_if_exists ~/.config/tmux ~/.config/tmux.bak
move_if_exists ~/.config/nvim ~/.config/nvim.bak
move_if_exists ~/.bashrc.d ~/.bashrc.d.bak
move_if_exists ~/.config/starship.toml ~/.config/starship.toml.bak
move_if_exists ~/.config/lazygit/config.yml ~/.config/lazygit/config.yml.bak
move_if_exists ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml.bak
move_if_exists ~/.zsh ~/.zsh.bak
