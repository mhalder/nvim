# nvim-lint

Asynchronous linter plugin for Neovim.

## Usage

Linting runs automatically on:

- Buffer enter
- After saving (BufWritePost)
- Leaving insert mode

## Configured Linters

- **Markdown**: markdownlint
- **Python**: ruff
- **Terraform**: tflint
- **Bash**: shellcheck
- **Dockerfile**: hadolint

## Commands

- `:lua require("lint").try_lint()` - Manually trigger linting
- `:lua require("lint").try_lint("linter_name")` - Run specific linter

## Configuration

Located in: `lua/plugins/lint.lua`

Note: Linters only run on modifiable buffers to avoid noise in read-only views like LSP hover popups.
