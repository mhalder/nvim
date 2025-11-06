# undotree

Visualize and navigate undo history as a tree structure.

## Usage

- `<leader>u` - Toggle undotree

## Commands

- `:UndotreeToggle` - Toggle the undo tree panel
- `:UndotreeShow` - Show the undo tree panel
- `:UndotreeHide` - Hide the undo tree panel
- `:UndotreeFocus` - Focus the undo tree panel

## Features

- Visual representation of undo branches
- Navigate through undo history
- Preview changes before applying
- Persistent undo support
- Time travel through file changes
- See file diffs for each undo state

## How It Works

The undo tree shows all changes as a tree structure, where:
- Each node represents a file state
- Branches show where you made different changes
- You can navigate to any previous state
- Changes are never lost (unlike linear undo)

## Navigation in Undotree

- `j/k` - Navigate up/down the tree
- `Enter` - Restore to selected state
- `u` - Undo
- `Ctrl-r` - Redo
- `?` - Toggle help
- `q` - Close undotree

## Configuration

Located in: `lua/plugins/undotree.lua`

Uses Neovim's built-in persistent undo feature (`undofile` option).
