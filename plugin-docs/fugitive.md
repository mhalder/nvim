# vim-fugitive

Premier Git wrapper for Vim.

## Usage

- `<leader>gs` - Git status
- `<leader>gb` - Git blame
- `<leader>gd` - Git diff split

## Commands

- `:G` or `:Git` - Run git commands
- `:Gdiffsplit` - Diff split
- `:Gvdiffsplit` - Vertical diff split
- `:Gread` - Read file from index
- `:Gwrite` - Write file to index
- `:Ggrep` - Git grep
- `:GMove` - Git mv
- `:GDelete` - Git rm
- `:GBrowse` - Open in browser

## Features

- Complete Git integration
- Interactive status window
- Diff viewing and resolution
- Commit interface
- Branch management
- Remote operations

## Configuration

Located in: `lua/plugins/fugitive.lua`

Lazy loads on commands and keymaps.
