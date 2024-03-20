local M = {}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "typescript-language-server",
    "eslint-lsp",
    "prettier",
    "js-debug-adapter",
    "tailwindcss-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "codelldb",

    -- rust
    "rust-analyzer",

    -- python
    "pyright",
    "ruff-lsp",
    "mypy",
    "black",
    "debugpy",

    -- go
    "gopls",
    "goimports-reviser",
    "golines",
    "gofumpt",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "bash",
    "rust",
    "go",
    "matlab",
    "arduino",
    "fortran",
    "python",
    "java",
    "json",
    "cpp",
    "latex",
    "vala",
    "yaml",
    "dockerfile",
    "nix",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}
return M
