# Install guide

This project uses the following packages:

- Btop
- Htop
- ZSH
  - Oh my zsh
- Bash
  - Starship
- Nvim
  - NvChad
- Tmux

## Install dependencies

Install system dependencies

### Rhel based

```bash
sudo dnf update
sudo dnf install -y \
    git nodejs btop neofetch neovim zsh tmux @development-tools python3 rust stow wget curl fzf ripgrep
```

### Debian based

```bash
sudo apt update && sudo apt upgrade
sudo apt install -y \
    git nodejs btop neofetch neovim zsh tmux build-essential python3 rustc stow wget curl fzf ripgrep
```

### Arch based

```bash
sudo pacman -Syu --noconfirm \
    git base-devel python nodejs neofetch neovim zsh tmux rust stow wget curl btop fzf ripgrep
```

### Install a [Nerd Font](https://www.nerdfonts.com/font-downloads)

Set it as the terminal font (required for NvChad themes)

### Install [Starship](https://starship.rs/), [Oh My zsh](https://ohmyz.sh/#install), [NvChad](https://nvchad.com/), [TPM](https://github.com/tmux-plugins/tpm) and [Zoxide](https://github.com/ajeetdsouza/zoxide)

```bash
curl -sS https://starship.rs/install.sh | sh # Starship

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Oh My zsh

# This repo still uses NvChad-v2, the link is not valid
# git clone https://github.com/NvChad/starter ~/.config/nvim && nvim # NvChad

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # TPM

curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash # Zoxide
```

### Install zsh plugins

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/tree/master)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/tree/master)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions # zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting # zsh-syntax-highlighting
```
