# My dotfiles 🧭

This directory contains various dotfiles for configuring an entire work environment.
Feel free to use this repo, create a fork, and use it as a starting point for your setup.

## Screenshots 📸

| Gnome Catppuccin 🐱                                                                                                      | Gnome Forge 🦎                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------- |
| ![Gnome Catppuccin](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/assets/gnome-catppuccin.png?raw=true) | ![Gnome Forge](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/assets/gnome-forge.png?raw=true) |

| Neovim 🌟                                                                                          | Neovim Debug 🐞                                                                                                |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| ![Neovim](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/assets/nvim.png?raw=true) | ![Neovim Debug](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/assets/java-debug.png?raw=true) |

| Tmux 🌟                                                                                          | Lazygit 🐞                                                                                             |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| ![Tmux](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/assets/tmux.png?raw=true) | ![Lazygit](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/assets/lazygit.png?raw=true) |

## Gnome Features 🐕

Gnome is customized to function as both a Desktop Environment and a Tiling Window Manager. The customizations made are made possible thanks to the following extensions:

- [App Menu is back](https://github.com/fthx/appmenu-is-back)
- [Blur my Shell](https://github.com/aunetx/blur-my-shell)
- [Burn my Windows](https://github.com/Schneegans/Burn-My-Windows)
- [Caffeine](https://github.com/eonpatapon/gnome-shell-extension-caffeine)
- [Compiz alike magic lamp effect](https://github.com/hermes83/compiz-alike-magic-lamp-effect)
- [Compiz windows effect](https://github.com/hermes83/compiz-windows-effect)
- [Coverflow Alt-Tab](https://github.com/dsheeler/CoverflowAltTab)
- [Dash to Dock](https://micheleg.github.io/dash-to-dock/)
- [Desktop Cube](https://github.com/Schneegans/Desktop-Cube)
- [Emoji Copy](https://github.com/felipeftn/emoji-copy)
- [Forge](https://github.com/forge-ext/forge)
- [Fullscreen Notifications](https://github.com/soal/gnome-shell-extension-fullscreen-notifications)
- [Gnome 4x UI Improvements](https://github.com/axxapy/gnome-ui-tune)
- [GSConnect](https://github.com/GSConnect/gnome-shell-extension-gsconnect/wiki)
- [Just Perfection](https://gitlab.gnome.org/jrahmatzadeh/just-perfection)
- [Logo Menu](https://github.com/Aryan20/Logomenu)
- [Pano - Clipboard Manager](https://github.com/oae/gnome-shell-pano)
- [PiP on top](https://github.com/Rafostar/gnome-shell-extension-pip-on-top)
- [Rounded Corners](https://github.com/lennart-k/gnome-rounded-corners)
- [Space Bar](https://github.com/christopher-l/space-bar)
- [Top Bar Organizer](https://gitlab.gnome.org/julianschacher/top-bar-organizer)
- [User Avatar In Quick Settings](https://github.com/d-go/quick-settings-avatar)
- [User Theme X](https://github.com/tuberry/user-theme-x)
- [Vitals](https://github.com/corecoding/Vitals)

The theme used for both Gnome and terminal programs is [Catppuccin Mocha](https://github.com/catppuccin/catppuccin).

## Tmux Features 🦓

## Neovim Features 🚀

Nvim is perfectly configured for the following languages.

| Language    | Language Server Protocol | Debug Adapter Protocol | Formatter     |
| ----------- | ------------------------ | ---------------------- | ------------- |
| C           | clangd (x86_64 only)     | gdb                    | clang-format  |
| C++         | clangd (x86_64 only)     | gdb                    | clang-format  |
| Python      | pyright                  | debugpy                | ruff          |
| Lua         | lua_ls                   | //                     | stylua        |
| Rust        | rust-analyzer            | gdb                    | rust-analyzer |
| Javascript  | tsserver                 | js-debug-adapter       | prettier      |
| Typescript  | tsserver                 | js-debug-adapter       | prettier      |
| Tailwindcss | tailwindcss              | //                     | //            |
| Go          | gopls                    | go-debug-adapter       | gofumpt       |
| Java        | jdtls                    | java-debug-adapter     | jdtls         |
| Bash        | bashls                   | bash-debug-adapter     | //            |

**To see the behavior of neovim with all languages, read [neovim.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/neovim.md)**

- **Plugin Management**: Efficiently manage plugins with [lazy.nvim](https://github.com/folke/lazy.nvim).
- **Compiler**: Compile your code with [compiler.nvim](https://github.com/Zeioth/compiler.nvim).
- **Debugging**: Debug issues with [nvim-dap](https://github.com/mfussenegger/nvim-dap) with [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui).
- **Diff Viewer**: Easily cycle through diffs with [diffview.nvim](https://github.com/sindrets/diffview.nvim).
- **Autocompletion**: Experience intelligent autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp).
- **Language Support**: Harness the power of Language Server Protocol with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig).
- **Formatting**: Keep your code clean with [conform.nvim](https://github.com/stevearc/conform.nvim).
- **Syntax Highlighting**: Enjoy enhanced syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- **Fuzzy Finding**: Find files and more with ease using [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- **Git Integration**: Effortlessly manage Git repositories with [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) and [lazygit](https://github.com/jesseduffield/lazygit).
- **Keymap Cheatsheet**: Quickly reference keymaps with [which-key.nvim](https://github.com/folke/which-key.nvim).
- **Markdown Preview**: Preview your Markdown files with [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim).

## Installation 💻

Install as explained in [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md)

## Project Notes 🗒️

#### AI - Neovim

The Nvim configuration includes the plugin [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim) which requires an API key from OpenAI. The plugin configuration requires the API key to be entered in the terminal password manager as `openai`.

Among the AI plugins there is [Codeium](https://codeium.com/) which requires an account. If you have one, use the command `:Codeium Auth` and paste the API key to log in.

#### Obsidian - Neovim

The Obsidian plugin requires [Obsidian](https://obsidian.md/) to be installed and a vault to be configured. To do this, modify the `lua/plugins/obsidian.lua` file as follows:

```lua
-- Modify the directory
event = {
  "BufReadPre " .. vim.fn.expand("~") .. "/vaults/second-brain/**.md",
  "BufNewFile " .. vim.fn.expand("~") .. "/vaults/second-brain/**.md",
},

-- Modify the name and directory
opts = {
  workspaces = {
    {
      name = "second-brain",
      path = "~/vaults/second-brain",
    },
  },
... -- Configuration continues
}
```

## Acknowledgements and License 🖖

Thanks to the [Nvchad](https://nvchad.com/) project and its community, [Alexis12199](https://github.com/Alexis12119) and [DreamsOfCode](https://github.com/dreamsofcode-io).

The software is made available under the GNU-GPL-V3 license. Please read [LICENSE](https://github.com/matteocavestri/dotfiles/blob/main/LICENSE) for more information about the license.

## TODOs

- Update docs --> CodeSnap compilation
