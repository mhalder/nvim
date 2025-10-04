# dressing.nvim

Improve the default vim.ui interfaces.

## What It Does

Enhances Neovim's built-in UI elements:

### vim.ui.select

Better selection menus for:

- Code actions
- LSP references
- Diagnostics
- Any plugin using `vim.ui.select`

### vim.ui.input

Better input prompts for:

- Rename operations
- Creating new files
- Any plugin using `vim.ui.input`

## Features

- Floating windows instead of command-line prompts
- Better visual feedback
- Fuzzy finding support
- Integrates with telescope/fzf-lua if available
- Works automatically with all plugins

## Configuration

Located in: `lua/plugins/dressing.lua`

Uses default settings for best compatibility.
