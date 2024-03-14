# Dependencies

### Rhel based

```bash
sudo dnf update
sudo dnf install -y git nodejs btop neofetch neovim zsh tmux @development-tools python3 rust stow wget curl fzf ripgrep
```

### Debian based

```bash
sudo apt update && sudo apt upgrade
sudo apt install -y git nodejs btop neofetch neovim zsh tmux build-essential python3 rustc stow wget curl fzf ripgrep
```

### Arch based

```bash
sudo pacman -Syu --noconfirm git base-devel python nodejs neofetch neovim zsh tmux rust stow wget curl btop fzf ripgrep
```

Installing paru as AUR helper

```bash
cd /tmp
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru
```

### All distros

Install [Starship](https://starship.rs/), [Oh My zsh](https://ohmyz.sh/#install), [NvChad](https://nvchad.com/), [TPM](https://github.com/tmux-plugins/tpm)

```bash
curl -sS https://starship.rs/install.sh | sh # Starship

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Oh My zsh

git clone https://github.com/NvChad/starter ~/.config/nvim && nvim # NvChad

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # TPM
```
