# conform.nvim

Lightweight yet powerful formatter plugin with format-on-save.

## Usage

| Key          | Description           |
| ------------ | --------------------- |
| `<leader>cf` | Format current buffer |
| `<leader>zf` | Toggle format-on-save |

## Commands

| Command           | Description                                   |
| ----------------- | --------------------------------------------- |
| `:ConformInfo`    | Show formatter info for current buffer        |
| `:FormatEnable`   | Enable autoformat on save globally            |
| `:FormatEnable!`  | Enable autoformat on save for current buffer  |
| `:FormatDisable`  | Disable autoformat on save globally           |
| `:FormatDisable!` | Disable autoformat on save for current buffer |
| `:FormatToggle`   | Toggle autoformat on save globally            |
| `:FormatToggle!`  | Toggle autoformat on save for current buffer  |

## Configured Formatters

### Language-specific

| Language            | Formatter(s)                         |
| ------------------- | ------------------------------------ |
| Lua                 | stylua                               |
| Python              | isort, black                         |
| Rust                | rustfmt                              |
| JSON                | prettierd, prettier                  |
| JavaScript/JSX      | biome                                |
| TypeScript/TSX      | biome                                |
| Shell (bash/sh/zsh) | shfmt                                |
| Markdown            | prettierd, prettier, trim_whitespace |
| Terraform           | terraform_fmt                        |
| HCL                 | terragrunt_fmt                       |
| Ansible YAML        | ansible-lint                         |
| YAML                | yamlfmt                              |

### Format on Save

Format on save is enabled by default with these exceptions:

- Disabled for C and C++ files
- Can be toggled globally or per-buffer using commands above

## Configuration

Located in: `lua/plugins/conform.lua`
