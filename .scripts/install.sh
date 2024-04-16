#!/bin/bash

detect_distro() {
if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
elif type lsb_release >/dev/null 2>&1; then
    DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
else
    echo "Distribution not recognized."
    exit 1
fi
}

install_deps () {
case $DISTRO in
    ubuntu|debian|linuxmint)
        sudo apt update && sudo apt install -y git nodejs btop neofetch neovim zsh tmux build-essential python3 rustc stow wget curl fzf ripgrep golang zoxide pass gdb eza bat 
        ;;
    fedora|centos|rhel|fedora-asahi-remix)
        sudo dnf install git nodejs btop neofetch neovim zsh tmux @development-tools python3 rust stow wget curl fzf ripgrep go zoxide pass gdb eza bat
        ;;
    arch|manjaro)
        sudo pacman -Syu git base-devel python nodejs neofetch neovim zsh tmux rust stow wget curl btop fzf ripgrep go zoxide pass gdb eza bat 
        ;;
    *)
        echo "Package manager not supported for this distribution."
        exit 1
        ;;
esac
}

install_nerd_font() {
    echo "Installing JetBrains Mono Nerd Font..."
    mkdir -p ~/.local/share/fonts
    (bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)") || {
        echo "Failed to install JetBrains Mono Nerd Font"
        exit 1
    }
    echo "JetBrains Mono Nerd Font installed successfully."
}

check_existence() {
    if [ -e "$1" ]; then
        return 0  # Exists
    else
        return 1  # Does not exist
    fi
}

move_if_exists() {
    if check_existence "$1"; then
        mv "$1" "$2"
        echo "The file or directory $1 has been moved to $2"
    else
        echo "The file or directory $1 does not exist, so it was not moved."
    fi
}


read -p "Do you really want to install the dotfiles? (y/n) " answer
if [ "$answer" == "y" ]; then
  detect_distro
  install_deps
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  (curl -sS https://starship.rs/install.sh | sh) || {
    echo "Starship installation failed"
    exit 1
  } 
  install_nerd_font
  check_existence
  move_if_exists ~/.bashrc ~/.bashrc.bak # Backup bash
  move_if_exists ~/.zshrc ~/.zshrc.bak # Backup zsh
  move_if_exists ~/.config/btop ~/.config/btop.bak # Backup btop
  move_if_exists ~/.config/neofetch ~/.config/neofetch.bak # Backup neofetch
  move_if_exists ~/.config/htop ~/.config/htop.bak # Backup htop
  move_if_exists ~/.config/tmux ~/.config/tmux.bak # Backup Tmux
  move_if_exists ~/.config/nvim ~/.config/nvim.bak # Backup neovim
  move_if_exists ~/.bashrc.d ~/.bashrc.d.bak # Backup bash aliases
  move_if_exists ~/.config/starship.toml ~/.config/starship.toml.bak # Backup starship
  move_if_exists ~/.config/lazygit/config.yml ~/.config/lazygit/config.yml.bak # Backup lazygit
  move_if_exists ~/.config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml.bak # Backup alacritty
  move_if_exists ~/.zsh ~/.zsh.bak # Backup .zsh
  move_if_exists ~/.config/bat ~/.config/bat.bak # Backup bat 
  cd $HOME
  git clone https://github.com/matteocavestri/dotfiles.git 
  cd dotfiles
  stow .
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions # zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting # zsh-syntax-highlighting
else
    exit
 fi

