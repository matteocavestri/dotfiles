#!/bin/bash

if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
elif type lsb_release >/dev/null 2>&1; then
    DISTRO=$(lsb_release -i | cut -d: -f2 | sed s/'^\t'//)
else
    echo "Distribution not recognized."
    exit 1
fi

install_with_apt() {
    sudo apt update && sudo apt install -y git nodejs btop neofetch neovim zsh tmux build-essential python3 rustc stow wget curl
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    curl -sS https://starship.rs/install.sh | sh
  }

install_with_dnf() {
    sudo dnf install -y git nodejs btop neofetch neovim zsh tmux @development-tools python3 rust stow wget curl
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    curl -sS https://starship.rs/install.sh | sh
}

install_with_pacman_and_paru() {
    sudo pacman -Syu --noconfirm git base-devel python nodejs neofetch neovim zsh tmux rust stow wget curl
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    curl -sS https://starship.rs/install.sh | sh
    if ! command -v paru > /dev/null; then
        cd /tmp
        git clone https://aur.archlinux.org/paru.git
        cd paru
        makepkg -si --noconfirm
        cd ..
        rm -rf paru
    fi
    paru -S --noconfirm btop
}

case $DISTRO in
    ubuntu|debian|linuxmint)
        install_with_apt
        ;;
    fedora|centos|rhel)
        install_with_dnf
        ;;
    arch|manjaro)
        install_with_pacman_and_paru
        ;;
    *)
        echo "Package manager not supported for this distribution."
        exit 1
        ;;
esac

echo "Installation completed."

