# project.nvim

Superior project management for Neovim.

## Usage

- `<leader>fp` - Switch projects

## Features

- Automatically detects project root
- Tracks recent projects
- Integrates with fzf-lua for fuzzy finding
- Changes directory to selected project
- Opens file picker after switching

## How It Works

Project root detection based on:

- `.git` directory
- LSP workspace folders
- Other pattern files

## Commands

- `:FzfProjects` - Open project picker

## Workflow

1. Press `<leader>fp`
2. Select a project from recent list
3. Directory changes to project root
4. File picker opens automatically

## Configuration

Located in: `lua/plugins/project.lua`

Uses default settings for project detection.
