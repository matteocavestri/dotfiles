# My dotfiles

This directory contains various dotfiles for configuring an entire work environment.
Feel free to use this repo, create a fork, and use it as a starting point for your configuration.

Nvim is perfectly configured for the following languages.

| Language    | Language Server Protocol | Debug Adapter Protocol | Formatter     | WIP |
| ----------- | ------------------------ | ---------------------- | ------------- | --- |
| C           | clangd                   | gdb                    | clang-format  |     |
| C++         | clangd                   | gdb                    | clang-format  |     |
| Python      | pyright                  | debugpy                | ruff          |     |
| Lua         | lua_ls                   | //                     | stylua        |     |
| Rust        | rust-analyzer            | gdb                    | rust-analyzer |     |
| Javascript  | tsserver                 | js-debug-adapter       | prettier      | X   |
| Typescript  | tsserver                 | node-debug2-adapter    | prettier      | X   |
| Tailwindcss | tailwindcss              | //                     | //            |     |
| Go          | gopls                    | go-debug-adapter       | gofumpt       | X   |
| Java        | jdtls                    | java-debug-adapter     | //            | X   |
| Bash        | bashls                   | bash-debug-adapter     | //            |     |

## Installation

Install as explained in [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md)

## Project Notes

- The Nvim configuration includes the plugin [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim) which requires an API key from OpenAI. The plugin configuration requires the API key to be entered in the terminal password manager as `openai`.
