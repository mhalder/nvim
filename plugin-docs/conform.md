# conform.nvim

Lightweight yet powerful formatter plugin with format-on-save.

## Usage

- `<leader>cf` - Format current buffer

## Commands

- `:ConformInfo` - Show formatter information for current buffer
- `:FormatEnable` - Enable autoformat on save globally
- `:FormatEnable!` - Enable autoformat on save for current buffer only
- `:FormatDisable` - Disable autoformat on save globally
- `:FormatDisable!` - Disable autoformat on save for current buffer only
- `:FormatToggle` - Toggle autoformat on save globally
- `:FormatToggle!` - Toggle autoformat on save for current buffer only

## Toggles

- `<leader>zf` - Formatting on save

## Configured Formatters

### Language-specific

- **Lua**: stylua
- **Python**: isort, black
- **JSON**: prettierd or prettier
- **JavaScript/TypeScript**: prettierd or prettier
- **Shell (bash/sh/zsh)**: shfmt
- **Markdown**: prettierd or prettier, trim_whitespace
- **Terraform**: terraform_fmt
- **HCL**: terragrunt_fmt
- **Ansible YAML**: ansible-lint
- **YAML**: yamlfmt

### Format on Save

Format on save is enabled by default with these exceptions:

- Disabled for C and C++ files
- Can be toggled globally or per-buffer using commands above

## Configuration

Located in: `lua/plugins/conform.lua`
