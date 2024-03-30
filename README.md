# My dotfiles

This directory contains various dotfiles for configuring an entire work environment.
Feel free to use this repo, create a fork, and use it as a starting point for your configuration.

## Neovim Features

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

To see the behavior of neovim with all languages, read [neovim.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/neovim.md)

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

Here are some demonstrative images:

**Neovim**

![Neovim](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/screenshot/nvim.png?raw=true)

**Neovim Debug**

![Neovim Debug](https://raw.githubusercontent.com/matteocavestri/dotfiles/main/screenshot/nvim-debug.png?raw=true)

## Installation

Install as explained in [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md)

## Project Notes

#### AI

The Nvim configuration includes the plugin [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim) which requires an API key from OpenAI. The plugin configuration requires the API key to be entered in the terminal password manager as `openai`.

Among the AI plugins is [Codeium](https://codeium.com/) for which an account is required. If you have an account, use the command `:Codeium Auth` and paste the API key to log in.

#### Obsidian

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
