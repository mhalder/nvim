# nvim-lspconfig

Language Server Protocol (LSP) configuration for code intelligence features.

## Features

- Code completion (via blink.cmp)
- Go to definition
- Find references
- Rename symbols
- Code actions
- Diagnostics
- Inlay hints

## LSP Keymaps

All LSP keymaps are prefixed with `gr`:

| Key   | Description              |
| ----- | ------------------------ |
| `grn` | Rename symbol            |
| `gra` | Code action (n, x modes) |
| `grr` | Find references          |
| `gri` | Go to implementation     |
| `grd` | Go to definition         |
| `grD` | Go to declaration        |
| `gO`  | Document symbols         |
| `gW`  | Workspace symbols        |

## Other Keymaps

| Key          | Description           |
| ------------ | --------------------- |
| `<leader>xf` | Show diagnostic float |
| `<leader>zd` | Toggle diagnostics    |
| `<leader>zh` | Toggle inlay hints    |

## Configured Servers

| Server      | Language              |
| ----------- | --------------------- |
| ts_ls       | TypeScript/JavaScript |
| pyright     | Python                |
| lua_ls      | Lua                   |
| bashls      | Bash                  |
| marksman    | Markdown              |
| terraformls | Terraform             |
| ansiblels   | Ansible               |

Note: Rust uses rustaceanvim (not configured here).

## Tools Installed via Mason

stylua, black, isort, shellcheck, shfmt, markdownlint, terraform, luacheck, ruff, tflint, hclfmt, prettier, prettierd, eslint_d, biome, yamlfmt, debugpy, jq, hadolint

## Configuration

Located in: `lua/plugins/lspconfig.lua`

Diagnostics are disabled by default - toggle with `<leader>zd`.
