# Neovim Capabilities

## Language Server Protocol

| Language    | LSP                  |
| ----------- | -------------------- |
| C           | Clangd (x86_64 only) |
| C++         | Clangd (x86_64 only) |
| Rust        | rust-analyzer        |
| Python      | Pyright              |
| Javascript  | typescript-tools     |
| Typescript  | typescript-tools     |
| Go          | gopls                |
| Java        | jdtls                |
| Bash        | bashls               |
| HTML        | html                 |
| CSS         | cssls                |
| Lua         | lua_ls               |
| Yaml        | yamlls               |
| Tailwindcss | tailwindcss          |

## Debug Adapter Protocol

All debuggers are configured through Mason except `gdb`

To install gdb, use the package manager of your distribution. Follow [install.md](https://github.com/matteocavestri/dotfiles/blob/main/docs/install.md) to install it.

| Language   | DAP                |
| ---------- | ------------------ |
| C          | gdb                |
| C++        | gdb                |
| Rust       | gdb                |
| Python     | Debugpy            |
| Javascript | js-debug           |
| Typescript | js-debug           |
| Go         | go-debug-adapter   |
| Bash       | bash-debug-adapter |

## Formatters

| Language        | Formatter          |
| --------------- | ------------------ |
| C               | clang_format       |
| C++             | clang_format       |
| Rust            | rust_analyzer      |
| Python          | ruff               |
| Go              | gofumpt, goimports |
| css             | Prettier           |
| flow            | Prettier           |
| graphql         | Prettier           |
| html            | Prettier           |
| json            | Prettier           |
| javascriptreact | Prettier           |
| javascript      | Prettier           |
| less            | Prettier           |
| markdown        | Prettier           |
| scss            | Prettier           |
| typescript      | Prettier           |
| typescriptreact | Prettier           |
| vue             | Prettier           |

## Linters

| Language | Linter |
| -------- | ------ |
| python   | ruff   |
