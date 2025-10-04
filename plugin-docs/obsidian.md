# obsidian.nvim

Obsidian note-taking integration for Neovim.

## Usage

All commands are prefixed with `<leader>o`:

### Basic Operations

- `<leader>oo` - Open note in Obsidian app
- `<leader>on` - Create new note
- `<leader>oq` - Quick switch between notes
- `<leader>of` - Follow link under cursor
- `gf` - Follow file/link (works on markdown links)

### Navigation

- `<leader>ob` - Show backlinks
- `<leader>ot` - Search by tags
- `<leader>os` - Search notes
- `<leader>oO` - All links overview
- `<leader>oC` - Table of contents

### Daily Notes

- `<leader>od` - Today's note
- `<leader>oy` - Yesterday's note
- `<leader>om` - Tomorrow's note
- `<leader>oD` - List all dailies

### Linking

- `<leader>ol` - Create link (Normal/Visual)
- `<leader>oL` - Create link to new note (Normal/Visual)
- `<leader>oe` - Extract selection to new note (Normal/Visual)

### Other

- `<leader>ow` - Switch workspace
- `<leader>or` - Rename note
- `<leader>op` - Paste image
- `<leader>oc` - Toggle checkbox
- `<leader>oT` - Insert template
- `<leader>oN` - New note from template

## Workspace

Configured for vault at: `~/terminus`

## Features

- Daily notes in `daily/` folder
- Templates in `templates/` folder
- New notes in `notes/` folder
- Attachments in `attachments/` folder
- Custom checkboxes with icons
- Blink.cmp completion for links
- FZF-lua picker integration

## Configuration

Located in: `lua/plugins/obsidian.lua`
