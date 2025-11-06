# nvim-lspconfig

Language Server Protocol (LSP) configuration for code intelligence features.

## Features

- Code completion
- Go to definition
- Find references
- Rename symbols
- Code actions
- Diagnostics

## LSP Keymaps

All LSP keymaps are prefixed with `gr`:

- `grn` - Rename symbol
- `gra` - Code action
- `grr` - Find references
- `gri` - Go to implementation
- `grd` - Go to definition
- `grD` - Go to declaration
- `gO` - Document symbols
- `gW` - Workspace symbols

## Other Keymaps

- `<leader>xf` - Show diagnostic float
- `<leader>zd` - Toggle diagnostics
- `<leader>zh` - Toggle inlay hints

## Configured Servers

- ts_ls (TypeScript/JavaScript)
- pyright (Python)
- bashls (Bash)
- marksman (Markdown)
- terraformls (Terraform)
- ansiblels (Ansible)
- lua_ls (Lua)

## Tools Installed

### Formatters

stylua, black, isort, shellcheck, shfmt, markdownlint, terraform, prettier, prettierd, biome, hclfmt, yamlfmt, jq

### Linters

luacheck, ruff, tflint, eslint_d, biome, hadolint, shellcheck

### Debug Adapters

debugpy

## Configuration

Located in: `lua/plugins/lspconfig.lua`

Diagnostics are disabled by default - toggle with `<leader>zd`.
