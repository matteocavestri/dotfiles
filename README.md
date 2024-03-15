# My dotfiles

This directory contains the dotfiles for my system

## Features

### Nvim

- LSP
  - C, C++
  - Python
  - Lua
  - Rust
  - Javascript, Typescript Tailwindcss
  - Go
- DAP
  - C, C++
  - Python
  - Rust
  - Go
- color highlighting
- git integrations
- catpuccin theme

### Tmux

- catpuccin theme
- zsh default

### ZSH

- git integration
- color highlighting
- zsh autocompletion
- oh my zsh
- zoxide --> cd-cdi (using fzf)

## Installation

Install all dependencies as explained in [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md)

Then, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/matteocavestri/dotfiles.git
$ cd dotfiles
```

Remove, or make a backup of the following files:

Not all the directories indicated necessarily exist in your system.

```bash
mv ~/.bashrc ~/.bashrc.bak
mv ~/.zshrc ~/.zshrc.bak
mv ~/.config/btop ~/.config/btop.bak
mv ~/.config/neofetch ~/.config/neofetch.bak
mv ~/.config/htop ~/.config/htop.bak
mv ~/.config/tmux ~/.config/tmux.bak
mv ~/.config/nvim/lua ~/.config/nvim/lua.bak
mv ~/.bashrc.d ~/.bashrc.d.bak
```

then use GNU stow to create symlinks

```
$ stow .
```

To install all nvim dependencies, type `:MasonInstallAll`.
To install all tmux plugins, use the shortcut `<C-b>I`, which is `<CTRL+b>+I`.
