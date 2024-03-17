# My dotfiles

This directory contains various dotfiles for configuring an entire work environment.
Feel free to use this repo, create a fork, and use it as a starting point for your configuration.

Nvim is perfectly configured for the following languages.

| Language Server Protocol | Debug Adapter Protocol | WIP |
| ------------------------ | ---------------------- | --- |
| C                        | C                      |     |
| C++                      | C++                    |     |
| Python                   | Python                 |     |
| Lua                      | //                     |     |
| Rust                     | Rust                   |     |
| Javascript               | Javascript             | X   |
| Typescript               | Typescript             | X   |
| Tailwindcss              | //                     |     |
| Go                       | Go                     |     |

## Installation

Install as explained in [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md)

## Project Notes

- The project still uses [NvChad v2](https://nvchad.com/news/v2.0_release), so cloning the Nvchad starter theme does not work at the current state. The porting to [Nvchad 2.5](https://nvchad.com/news/v2.5_release) is a work in progress.

- The Nvim configuration includes the plugin [ChatGPT.nvim](https://github.com/jackMort/ChatGPT.nvim) which requires an API key from OpenAI. The plugin configuration requires the API key to be entered in the terminal password manager as `openai`.
