# mini.nvim

Collection of small independent Neovim plugins/modules.

## Modules Used

### mini.ai - Better Around/Inside Textobjects

Enhanced text objects for better selection.

Examples:

- `va)` - Visually select around parentheses
- `yinq` - Yank inside next quote
- `ci'` - Change inside single quote

Searches within 500 lines by default.

### mini.surround - Add/Delete/Replace Surroundings

Manipulate brackets, quotes, and other surrounding characters.

All commands are prefixed with `gs`:

- `gsa` - Add surrounding (Normal and Visual modes)
- `gsd` - Delete surrounding
- `gsf` - Find surrounding (to the right)
- `gsF` - Find surrounding (to the left)
- `gsh` - Highlight surrounding
- `gsr` - Replace surrounding
- `gsn` - Update n_lines

Examples:

- `gsaiw)` - Surround add inner word with parentheses
- `gsd'` - Surround delete quotes
- `gsr)'` - Surround replace parentheses with quotes

### mini.statusline - Simple Statusline

Lightweight statusline with icons (if Nerd Font available).

Shows location in LINE:COLUMN format.

## Configuration

Located in: `lua/plugins/mini.lua`
