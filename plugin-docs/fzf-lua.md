# fzf-lua

Fuzzy finder for files, grep, buffers, and more.

## Usage

All commands are prefixed with `<leader>f`:

### File Finding

- `<leader><leader>` - Find files in current directory
- `<leader>fn` - Find files in Neovim config
- `<leader>fc` - Find files in ~/.config
- `<leader>fp` - Find files in plugins directory
- `<leader>fo` - Old/recent files

### Search

- `<leader>fg` - Live grep (search in files)
- `<leader>fw` - Grep word under cursor
- `<leader>fW` - Grep WORD under cursor
- `<leader>/` - Grep in current buffer

### Navigation

- `<leader>,` - Switch buffers
- `<leader>fm` - Jump to marks
- `<leader>fd` - Browse diagnostics

### Help

- `<leader>fh` - Search help tags
- `<leader>fk` - Search keymaps
- `<leader>fz` - Browse all fzf builtin pickers

### Other

- `<leader>fr` - Resume last picker

## Inside FZF

- `Ctrl-n/p` or `↓/↑` - Navigate items
- `Enter` - Select item
- `Ctrl-c` or `Esc` - Close
- `Tab` - Mark multiple items
- `Ctrl-/` - Toggle preview

## Configuration

Located in: `lua/plugins/fzf-lua.lua`

Uses mini.icons for file icons.
