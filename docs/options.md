# Neovim Options and Settings

Complete reference of all configured options in this Neovim setup.

Location: `lua/config/options.lua`

## Table of Contents

- [Leader Keys](#leader-keys)
- [Display Options](#display-options)
- [Editing Options](#editing-options)
- [Indentation](#indentation)
- [Search Options](#search-options)
- [UI and UX](#ui-and-ux)
- [Performance](#performance)
- [Window Management](#window-management)
- [Environment](#environment)

---

## Leader Keys

```lua
vim.g.mapleader = " "         -- Space as leader key
vim.g.maplocalleader = "\\"   -- Backslash as local leader
```

| Variable | Value | Description |
|----------|-------|-------------|
| `mapleader` | Space | Global leader key for mappings |
| `maplocalleader` | `\` | Local leader key for buffer-specific mappings |

---

## Display Options

### Line Numbers

```lua
opt.number = true
opt.relativenumber = true
```

| Option | Value | Description |
|--------|-------|-------------|
| `number` | `true` | Show absolute line numbers |
| `relativenumber` | `true` | Show relative line numbers (hybrid mode) |

### Cursor and Visual Feedback

```lua
opt.cursorline = true
opt.scrolloff = 10
opt.signcolumn = "yes"
```

| Option | Value | Description |
|--------|-------|-------------|
| `cursorline` | `true` | Highlight the current line |
| `scrolloff` | `10` | Keep 10 lines visible above/below cursor |
| `signcolumn` | `"yes"` | Always show sign column (prevents shifting) |

### Mode Display

```lua
opt.showmode = false
```

| Option | Value | Description |
|--------|-------|-------------|
| `showmode` | `false` | Don't show mode (handled by statusline) |

### Visual Characters

```lua
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.fillchars:append({ diff = " " })
```

| Option | Value | Description |
|--------|-------|-------------|
| `list` | `true` | Show invisible characters |
| `listchars` | `{ tab = "» ", trail = "·", nbsp = "␣" }` | Characters to display for tabs, trailing spaces, and non-breaking spaces |
| `fillchars` | `{ diff = " " }` | Characters for diff mode fills |

### Concealment

```lua
opt.conceallevel = 2
```

| Option | Value | Description |
|--------|-------|-------------|
| `conceallevel` | `2` | Conceal text with replacement character (useful for markdown) |

---

## Editing Options

### Mouse Support

```lua
opt.mouse = "a"
```

| Option | Value | Description |
|--------|-------|-------------|
| `mouse` | `"a"` | Enable mouse in all modes |

### Clipboard

```lua
vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)
```

| Option | Value | Description |
|--------|-------|-------------|
| `clipboard` | `"unnamedplus"` | Use system clipboard (scheduled to avoid startup delay) |

### Undo

```lua
opt.undofile = true
```

| Option | Value | Description |
|--------|-------|-------------|
| `undofile` | `true` | Persistent undo across sessions |

### Line Breaking

```lua
opt.breakindent = true
```

| Option | Value | Description |
|--------|-------|-------------|
| `breakindent` | `true` | Preserve indentation in wrapped lines |

### Command Line

```lua
opt.inccommand = "split"
opt.confirm = true
```

| Option | Value | Description |
|--------|-------|-------------|
| `inccommand` | `"split"` | Show incremental command results in split |
| `confirm` | `true` | Confirm before destructive operations |

---

## Indentation

```lua
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
```

| Option | Value | Description |
|--------|-------|-------------|
| `expandtab` | `true` | Use spaces instead of tabs |
| `shiftwidth` | `2` | Number of spaces for indentation |
| `tabstop` | `2` | Number of spaces a tab counts for |
| `softtabstop` | `2` | Number of spaces for Tab key in insert mode |

**Note:** Individual file types may override these settings via `vim-sleuth` auto-detection.

---

## Search Options

```lua
opt.ignorecase = true
opt.smartcase = true
```

| Option | Value | Description |
|--------|-------|-------------|
| `ignorecase` | `true` | Case insensitive search |
| `smartcase` | `true` | Case sensitive if pattern contains uppercase |

---

## UI and UX

### Timing

```lua
opt.updatetime = 250
opt.timeoutlen = 300
```

| Option | Value | Description |
|--------|-------|-------------|
| `updatetime` | `250` | Faster completion and swap file writing (ms) |
| `timeoutlen` | `300` | Time to wait for mapped sequence (ms) |

---

## Window Management

### Split Behavior

```lua
opt.splitright = true
opt.splitbelow = true
```

| Option | Value | Description |
|--------|-------|-------------|
| `splitright` | `true` | Vertical splits open to the right |
| `splitbelow` | `true` | Horizontal splits open below |

---

## Environment

### Node.js Path

```lua
vim.env.PATH = vim.fn.expand("~/.config/nvm/versions/node/v22.20.0/bin") .. ":" .. vim.env.PATH
```

Prepends Node.js v22.20.0 from NVM to the PATH for LSP servers and other tools that require Node.

### Deprecation Warnings

```lua
vim.deprecate = function() end
```

Disables deprecation warnings (cleaner UI).

---

## Auto Commands

### Highlight on Yank

```lua
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})
```

Briefly highlights yanked text for visual feedback.

---

## Plugin-Managed Options

Some options are managed by plugins:

- **Indentation detection:** Handled by `vim-sleuth`
- **Diagnostics:** Configured in `lspconfig.lua`
- **Statusline:** Managed by `mini.statusline`
- **Status column:** Managed by `snacks.nvim`
- **Indent guides:** Managed by `snacks.nvim`

---

## Quick Reference Table

| Category | Options |
|----------|---------|
| **Display** | `number`, `relativenumber`, `cursorline`, `scrolloff`, `signcolumn`, `list`, `conceallevel` |
| **Editing** | `mouse`, `clipboard`, `undofile`, `breakindent`, `confirm` |
| **Indentation** | `expandtab`, `shiftwidth`, `tabstop`, `softtabstop` |
| **Search** | `ignorecase`, `smartcase` |
| **UI/UX** | `updatetime`, `timeoutlen`, `showmode`, `inccommand` |
| **Windows** | `splitright`, `splitbelow` |

---

## Overriding Options

To override options for your local setup, you can:

1. Create a local config file (not tracked by git)
2. Use ftplugin files for filetype-specific options
3. Modify `lua/config/options.lua` directly

### Example: Local Override

Create `~/.config/nvim/lua/config/local.lua`:

```lua
-- Local overrides
vim.opt.relativenumber = false  -- Disable relative numbers
vim.opt.scrolloff = 5           -- Less scroll offset
```

Then source it in `init.lua`:
```lua
pcall(require, "config.local")
```
