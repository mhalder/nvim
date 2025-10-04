# neo-tree.nvim

File explorer tree for browsing the filesystem.

## Usage

- `\` - Toggle Neo-tree (reveals current file)

## Inside Neo-tree

### Navigation

- `j/k` or `↓/↑` - Move up/down
- `Enter` - Open file/folder
- `<C-v>` - Open in vertical split
- `<C-x>` - Open in horizontal split
- `<C-t>` - Open in new tab
- `\` - Close Neo-tree

### File Operations

- `a` - Add file/directory
- `d` - Delete
- `r` - Rename
- `c` - Copy
- `x` - Cut
- `p` - Paste
- `y` - Copy to clipboard

### View Options

- `H` - Toggle hidden files
- `.` - Set root directory
- `/` - Fuzzy finder
- `?` - Show help

### Other

- `R` - Refresh
- `q` - Close

## Configuration

Located in: `lua/plugins/neo-tree.lua`

Uses mini.icons for file icons.
