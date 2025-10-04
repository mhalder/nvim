# oil.nvim

Edit your filesystem like a buffer.

## Usage

- `-` - Open oil in floating window

## Inside Oil

### Navigation

- `<CR>` - Open file/directory
- `-` - Go to parent directory
- `_` - Open current working directory
- `` ` `` - Change directory to current location
- `g.` - Toggle hidden files

### File Operations

- `<C-s>` - Open in vertical split
- `<C-h>` - Open in horizontal split
- `<C-t>` - Open in new tab
- `<C-p>` - Preview file

### Actions

- Edit the buffer like normal text
- `:w` to save changes (create/delete/rename files)
- `<C-c>` - Close oil without saving
- `<C-l>` - Refresh

### Other

- `g?` - Show help
- `gs` - Change sort order
- `gx` - Open with external program

## Features

- Edit filesystem like a normal buffer
- Shows hidden files by default
- No confirmation for simple edits
- Floating window by default
- Uses mini.icons for file icons

## Configuration

Located in: `lua/plugins/oil.lua`
