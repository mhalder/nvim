# fzf-lua

Fuzzy finder for files, grep, buffers, and more.

## Usage

### File Finding

| Key                | Description                     |
| ------------------ | ------------------------------- |
| `<leader><leader>` | Find files in current directory |
| `<leader>fn`       | Find files in Neovim config     |
| `<leader>fc`       | Find files in ~/.config         |
| `<leader>fp`       | Find files in plugins directory |
| `<leader>fo`       | Old/recent files                |

### Search

| Key          | Description                 |
| ------------ | --------------------------- |
| `<leader>fg` | Live grep (search in files) |
| `<leader>fw` | Grep word under cursor      |
| `<leader>fW` | Grep WORD under cursor      |
| `<leader>/`  | Grep in current buffer      |

### Navigation

| Key          | Description        |
| ------------ | ------------------ |
| `<leader>,`  | Switch buffers     |
| `<leader>fm` | Jump to marks      |
| `<leader>fd` | Browse diagnostics |

### Help

| Key          | Description                    |
| ------------ | ------------------------------ |
| `<leader>fh` | Search help tags               |
| `<leader>fk` | Search keymaps                 |
| `<leader>fz` | Browse all fzf builtin pickers |

### Other

| Key          | Description        |
| ------------ | ------------------ |
| `<leader>fr` | Resume last picker |

## Inside FZF

| Key            | Description         |
| -------------- | ------------------- |
| `Ctrl-n/p`     | Navigate items      |
| `Enter`        | Select item         |
| `Ctrl-c`/`Esc` | Close               |
| `Tab`          | Mark multiple items |
| `Ctrl-/`       | Toggle preview      |

## Configuration

Located in: `lua/plugins/fzf-lua.lua`

Uses mini.icons for file icons.
