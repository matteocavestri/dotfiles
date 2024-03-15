# My dotfiles

This directory contains the dotfiles for my system
Read the docs

## Features

### Nvim

- LSP
  - C, C++
  - Python
  - Lua
  - Rust
  - Javascript, Typescript Tailwindcss
- DAP
  - C, C++
  - Python
  - Rust
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

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
dnf install git
apt install git
```

### Stow

```
pacman -S stow
dnf install stow
apt install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone https://github.com/matteocavestri/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
