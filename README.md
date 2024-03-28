# My dotfiles

This directory contains various dotfiles for configuring an entire work environment.
Feel free to use this repo, create a fork, and use it as a starting point for your configuration.

Nvim is perfectly configured for the following languages.

| Language    | Language Server Protocol | Debug Adapter Protocol | Formatter     | WIP |
| ----------- | ------------------------ | ---------------------- | ------------- | --- |
| C           | clangd (x86_64 only)     | gdb                    | clang-format  |     |
| C++         | clangd (x86_64 only)     | gdb                    | clang-format  |     |
| Python      | pyright                  | debugpy                | ruff          |     |
| Lua         | lua_ls                   | //                     | stylua        |     |
| Rust        | rust-analyzer            | gdb                    | rust-analyzer |     |
| Javascript  | tsserver                 | js-debug-adapter       | prettier      |     |
| Typescript  | tsserver                 | js-debug-adapter       | prettier      |     |
| Tailwindcss | tailwindcss              | //                     | //            |     |
| Go          | gopls                    | go-debug-adapter       | gofumpt       |     |
| Java        | jdtls                    | java-debug-adapter     | jdtls         | X   |
| Bash        | bashls                   | bash-debug-adapter     | //            |     |

## Installation

Install as explained in [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md)

## Project Notes

#### AI

The Nvim configuration includes the plugin [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim) which requires an API key from OpenAI. The plugin configuration requires the API key to be entered in the terminal password manager as `openai`.

Among the AI plugins is [Codeium](https://codeium.com/) for which an account is required. If you have an account, use the command `:Codeium Auth` and paste the API key to log in.

#### Obsidian

The Obsidian plugin requires [Obsidian](https://obsidian.md/) Obsidian to be installed and a vault to be configured. To do this, modify the `lua/plugins/obsidian.lua` file as follows:

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
