# Install guide

This project uses [Oh My ZSH](https://ohmyz.sh/), [Starship](https://starship.rs/), [NvChad](https://nvchad.com/), and the theme [Catpuccin](https://github.com/catppuccin/catppuccin).
You can find all dependencies in the file [deps.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/deps.md).
Thanks to all the projects that have made this repo possible.

## (1) Install dependencies

You can install the dependencies using the script [deps.sh](https://github.com/matteocavestri/dotfiles/blob/main/.scripts/deps.sh) or do it manually based on your package manager.

### Rhel based --> DNF

```bash
sudo dnf update
sudo dnf install -y \
    git nodejs btop neofetch neovim zsh tmux @development-tools python3 rust stow wget curl fzf ripgrep go zoxide pass gdb
```

### Debian based --> APT

```bash
sudo apt update && sudo apt upgrade
sudo apt install -y \
    git nodejs btop neofetch neovim zsh tmux build-essential python3 rustc stow wget curl fzf ripgrep golang zoxide pass gdb
```

### Arch based --> Pacman

```bash
sudo pacman -Syu --noconfirm \
    git base-devel python nodejs neofetch neovim zsh tmux rust stow wget curl btop fzf ripgrep go zoxide pass gdb
```

## (2) Install a [Nerd Font](https://www.nerdfonts.com/font-downloads)

Set it as the terminal font (required for NvChad themes)

## (3) Install [Starship](https://starship.rs/), [Oh My zsh](https://ohmyz.sh/#install) and [TPM](https://github.com/tmux-plugins/tpm)

```bash
curl -sS https://starship.rs/install.sh | sh # Starship

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Oh My zsh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm # TPM
```

## (4) Install zsh plugins

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/tree/master)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/tree/master)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions # zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting # zsh-syntax-highlighting
```

## (5) Clone the repo

Check out the dotfiles repo in your $HOME directory using git
It is recommended to use this repository as a starting point and then fork it and then clone it in order to have your own configuration based on this.

```
$ git clone https://github.com/matteocavestri/dotfiles.git
$ cd dotfiles
```

## (6) Backup old configurations

You can use the script [move.sh](https://github.com/matteocavestri/dotfiles/blob/main/.scripts/move.sh) or use the commands below.

```bash
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
mv ~/.config/btop ~/.config/btop.bak
mv ~/.config/neofetch ~/.config/neofetch.bak
mv ~/.config/htop ~/.config/htop.bak
mv ~/.config/tmux ~/.config/tmux.bak
mv ~/.config/nvim/ ~/.config/nvim.bak
mv ~/.bashrc.d ~/.bashrc.d.bak
mv ~/.config/starship.toml ~/.config/starship.toml.bak
```

## (7) Use stow to create symlinks

Use stow to create symbolic links from the repository to your home directory.
The command should be executed from the root of this repository.

```bash
stow .
```

## (8) Post install

After installing everything, the TPM and Mason plugins need to be configured.

To install all nvim dependencies, type `:MasonInstallAll` inside nvim.
To install all tmux plugins, use the shortcut `<C-b>I`, which is `<CTRL+b>+I`.

## (9) Install optional packages

### [LazyGit](https://github.com/jesseduffield/lazygit)

**Fedora - RHEL Based**

```bash
sudo dnf copr enable atim/lazygit -y
sudo dnf install lazygit
```

**ArchLinux**

```bash
sudo pacman -S lazygit
```

**Debian - Ubuntu**

```bash
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```
