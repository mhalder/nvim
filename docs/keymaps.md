# Neovim Keymaps Reference

Complete reference of all keyboard shortcuts in this Neovim configuration.

**Leader Keys:**

- `<leader>` = Space
- `<localleader>` = Backslash

## Table of Contents

- [Core Keymaps](#core-keymaps)
- [Navigation](#navigation)
- [File Management](#file-management)
- [Finding and Searching](#finding-and-searching)
- [Git Operations](#git-operations)
- [Code Editing](#code-editing)
- [LSP Operations](#lsp-operations)
- [Debugging](#debugging)
- [Testing](#testing)
- [AI and Copilot](#ai-and-copilot)
- [Obsidian](#obsidian)
- [Toggles](#toggles)
- [Utilities](#utilities)

---

## Core Keymaps

### Basic Operations

| Key          | Mode | Description                   |
| ------------ | ---- | ----------------------------- |
| `<Esc>`      | n    | Clear search highlighting     |
| `<Esc><Esc>` | t    | Exit terminal mode            |
| `<C-u>`      | n    | Scroll up (centered)          |
| `<C-d>`      | n    | Scroll down (centered)        |
| `<`          | v    | Indent left (keep selection)  |
| `>`          | v    | Indent right (keep selection) |

### Session Management

| Key          | Mode | Description        |
| ------------ | ---- | ------------------ |
| `<leader>jj` | n    | Quit               |
| `<leader>jk` | n    | Save               |
| `<leader>jl` | n    | Save and quit      |
| `<leader>j;` | n    | Quit all (no save) |

### Lua Utilities

| Key          | Mode | Description                  |
| ------------ | ---- | ---------------------------- |
| `<leader>lp` | n    | Copy filepath to clipboard   |
| `<leader>lf` | n    | Copy filename to clipboard   |
| `<leader>ls` | n    | Source current file          |
| `<leader>le` | n    | Evaluate current line as Lua |
| `<leader>le` | v    | Evaluate selection as Lua    |
| `<leader>lv` | n    | Print vim value              |

---

## Navigation

### Tmux Navigation

| Key     | Mode | Description                 |
| ------- | ---- | --------------------------- |
| `<C-h>` | n    | Navigate left (tmux-aware)  |
| `<C-j>` | n    | Navigate down (tmux-aware)  |
| `<C-k>` | n    | Navigate up (tmux-aware)    |
| `<C-l>` | n    | Navigate right (tmux-aware) |
| `<C-\>` | n    | Navigate to previous pane   |

### Flash (Fast Navigation)

| Key     | Mode  | Description         |
| ------- | ----- | ------------------- |
| `s`     | n,x,o | Flash jump          |
| `S`     | n,x,o | Flash treesitter    |
| `r`     | o     | Remote flash        |
| `R`     | o,x   | Treesitter search   |
| `<C-s>` | c     | Toggle flash search |

### Harpoon (Bookmarks)

| Key          | Mode | Description              |
| ------------ | ---- | ------------------------ |
| `<leader>ra` | n    | Add file to harpoon      |
| `<leader>rr` | n    | Remove file from harpoon |
| `<leader>rm` | n    | Open harpoon menu        |

### Zoxide (Directory Jumping)

| Key         | Mode | Description               |
| ----------- | ---- | ------------------------- |
| `<leader>.` | n    | Zoxide interactive picker |

---

## File Management

### File Explorer

| Key         | Mode | Description                          |
| ----------- | ---- | ------------------------------------ |
| `\`         | n    | Toggle NeoTree (reveal current file) |
| `-`         | n    | Oil floating window                  |
| `<leader>-` | n,v  | Open Yazi file browser               |
| `<leader>_` | n    | Open Yazi in cwd                     |

---

## Finding and Searching

### FZF-Lua

| Key                | Mode | Description              |
| ------------------ | ---- | ------------------------ |
| `<leader><leader>` | n    | Find files               |
| `<leader>,`        | n    | Buffers                  |
| `<leader>/`        | n    | Grep current buffer      |
| `<leader>fg`       | n    | Live grep                |
| `<leader>fn`       | n    | Neovim config files      |
| `<leader>fc`       | n    | Config files (~/.config) |
| `<leader>fp`       | n    | Plugins / Projects       |
| `<leader>fh`       | n    | Help tags                |
| `<leader>fk`       | n    | Keymaps                  |
| `<leader>fm`       | n    | Marks                    |
| `<leader>fz`       | n    | FZF builtin commands     |
| `<leader>fw`       | n    | Grep word under cursor   |
| `<leader>fW`       | n    | Grep WORD under cursor   |
| `<leader>fd`       | n    | Document diagnostics     |
| `<leader>fr`       | n    | Resume last search       |
| `<leader>fo`       | n    | Old files (recent)       |

---

## Git Operations

### Fugitive

| Key          | Mode | Description    |
| ------------ | ---- | -------------- |
| `<leader>gs` | n    | Git status     |
| `<leader>gb` | n    | Git blame      |
| `<leader>gd` | n    | Git diff split |

### LazyGit

| Key          | Mode | Description  |
| ------------ | ---- | ------------ |
| `<leader>gl` | n    | Open LazyGit |

### Gitsigns

| Key          | Mode | Description                   |
| ------------ | ---- | ----------------------------- |
| `]c`         | n    | Next git change               |
| `[c`         | n    | Previous git change           |
| `<leader>hs` | n,v  | Stage hunk                    |
| `<leader>hr` | n,v  | Reset hunk                    |
| `<leader>ht` | n    | Stage buffer                  |
| `<leader>hu` | n    | Undo stage hunk               |
| `<leader>he` | n    | Reset buffer                  |
| `<leader>hp` | n    | Preview hunk                  |
| `<leader>hb` | n    | Blame line                    |
| `<leader>hd` | n    | Diff against index            |
| `<leader>hi` | n    | Diff against last commit      |
| `<leader>zb` | n    | Toggle blame line             |
| `<leader>ze` | n    | Preview hunk inline (deleted) |

---

## Code Editing

### Completion (Blink)

| Key      | Mode | Description                         |
| -------- | ---- | ----------------------------------- |
| `<M-j>`  | i    | Scroll completion docs down         |
| `<M-k>`  | i    | Scroll completion docs up           |
| `<M-CR>` | i    | Accept completion                   |
| `<Tab>`  | i    | Snippet forward / Accept suggestion |

### Surround (Mini)

| Key   | Mode | Description        |
| ----- | ---- | ------------------ |
| `gsa` | n,v  | Add surround       |
| `gsd` | n    | Delete surround    |
| `gsf` | n    | Find surround      |
| `gsF` | n    | Find surround left |
| `gsh` | n    | Highlight surround |
| `gsr` | n    | Replace surround   |
| `gsn` | n    | Update n_lines     |

### Formatting

| Key          | Mode | Description               |
| ------------ | ---- | ------------------------- |
| `<leader>cf` | n,v  | Format buffer/selection   |
| `<leader>zf` | n    | Toggle autoformat on save |

### Treesitter Text Objects

| Key  | Mode | Description     |
| ---- | ---- | --------------- |
| `af` | n,v  | Around function |
| `if` | n,v  | Inner function  |
| `ac` | n,v  | Around class    |
| `ic` | n,v  | Inner class     |
| `as` | n,v  | Around scope    |

---

## LSP Operations

| Key          | Mode | Description          |
| ------------ | ---- | -------------------- |
| `grn`        | n    | Rename symbol        |
| `gra`        | n,x  | Code action          |
| `grr`        | n    | Find references      |
| `gri`        | n    | Go to implementation |
| `grd`        | n    | Go to definition     |
| `grD`        | n    | Go to declaration    |
| `gO`         | n    | Document symbols     |
| `gW`         | n    | Workspace symbols    |
| `<leader>zh` | n    | Toggle inlay hints   |

---

## Debugging

### DAP (Debug Adapter Protocol)

| Key          | Mode | Description         |
| ------------ | ---- | ------------------- |
| `<leader>dc` | n    | Continue execution  |
| `<leader>di` | n    | Step into           |
| `<leader>do` | n    | Step over           |
| `<leader>du` | n    | Step out            |
| `<leader>db` | n    | Toggle breakpoint   |
| `<leader>dt` | n    | Terminate debugging |
| `<leader>dr` | n    | Toggle DAP UI       |

---

## Testing

### Neotest

| Key          | Mode | Description         |
| ------------ | ---- | ------------------- |
| `<leader>tt` | n    | Run current file    |
| `<leader>tT` | n    | Run all tests       |
| `<leader>tr` | n    | Run nearest test    |
| `<leader>tl` | n    | Run last test       |
| `<leader>ts` | n    | Toggle summary      |
| `<leader>to` | n    | Open output         |
| `<leader>tO` | n    | Toggle output panel |
| `<leader>tS` | n    | Stop test           |
| `<leader>tw` | n    | Watch current file  |

---

## AI and Copilot

### Sidekick (Claude)

| Key          | Mode    | Description                     |
| ------------ | ------- | ------------------------------- |
| `<Tab>`      | n       | Goto/apply next edit suggestion |
| `<C-space>`  | n,t,i,x | Toggle sidekick                 |
| `<leader>aa` | n       | Toggle CLI                      |
| `<leader>as` | n       | Select CLI                      |
| `<leader>ad` | n       | Detach CLI session              |
| `<leader>at` | x,n     | Send selection/current to CLI   |
| `<leader>af` | n       | Send file to CLI                |
| `<leader>av` | x       | Send visual selection           |
| `<leader>ap` | n,x     | Select prompt                   |
| `<leader>ac` | n       | Toggle Claude directly          |

---

## Obsidian

**Note:** The Obsidian plugin is currently disabled. These keymaps are not active.

### Notes Management

| Key          | Mode | Description            |
| ------------ | ---- | ---------------------- |
| `<leader>oo` | n    | Open note              |
| `<leader>on` | n    | New note               |
| `<leader>oq` | n    | Quick switch           |
| `<leader>of` | n    | Follow link            |
| `<leader>ob` | n    | Show backlinks         |
| `<leader>ot` | n    | Search tags            |
| `<leader>od` | n    | Today's daily note     |
| `<leader>oy` | n    | Yesterday's daily note |
| `<leader>om` | n    | Tomorrow's daily note  |
| `<leader>os` | n    | Search notes           |
| `<leader>ow` | n    | Switch workspace       |
| `<leader>or` | n    | Rename note            |
| `<leader>op` | n    | Paste image            |
| `<leader>oc` | n    | Toggle checkbox        |
| `<leader>oT` | n    | Insert template        |
| `<leader>oN` | n    | New from template      |
| `<leader>oD` | n    | List dailies           |
| `<leader>oC` | n    | Table of contents      |
| `<leader>oO` | n    | All links overview     |
| `gf`         | n    | Follow file/link       |

### Links and Extraction

| Key          | Mode | Description      |
| ------------ | ---- | ---------------- |
| `<leader>ol` | n,v  | Link to note     |
| `<leader>oL` | n,v  | Link to new note |
| `<leader>oe` | n,v  | Extract note     |

---

## Toggles

| Key          | Mode | Description               |
| ------------ | ---- | ------------------------- |
| `<leader>zd` | n    | Toggle diagnostics        |
| `<leader>zi` | n    | Toggle indent guides      |
| `<leader>zf` | n    | Toggle autoformat on save |
| `<leader>zh` | n    | Toggle inlay hints        |
| `<leader>zb` | n    | Toggle git blame line     |

---

## Utilities

### Diagnostics

| Key          | Mode | Description               |
| ------------ | ---- | ------------------------- |
| `<leader>xf` | n    | Show diagnostic float     |
| `<leader>xx` | n    | Toggle diagnostics list   |
| `<leader>xX` | n    | Toggle buffer diagnostics |
| `<leader>xl` | n    | Toggle location list      |
| `<leader>xq` | n    | Toggle quickfix           |
| `[q`         | n    | Previous trouble/quickfix |
| `]q`         | n    | Next trouble/quickfix     |

### Symbols and LSP Info

| Key          | Mode | Description     |
| ------------ | ---- | --------------- |
| `<leader>cs` | n    | Toggle symbols  |
| `<leader>cS` | n    | Toggle LSP info |

### Terminal

| Key          | Mode | Description                  |
| ------------ | ---- | ---------------------------- |
| `<leader>yt` | n    | Terminal in horizontal split |
| `<leader>yv` | n    | Terminal in vertical split   |
| `<leader>yf` | n    | Terminal fullscreen          |

### Undo Tree

| Key         | Mode | Description     |
| ----------- | ---- | --------------- |
| `<leader>u` | n    | Toggle undotree |

### Noice (Messages)

| Key          | Mode | Description               |
| ------------ | ---- | ------------------------- |
| `<S-Enter>`  | c    | Redirect cmdline to noice |
| `<leader>nl` | n    | Last message              |
| `<leader>nh` | n    | Message history           |
| `<leader>na` | n    | All messages              |
| `<leader>nd` | n    | Dismiss messages          |
| `<leader>np` | n    | Message picker            |

---

## Keymap Prefix Reference

| Prefix      | Category                   |
| ----------- | -------------------------- |
| `<leader>a` | AI/Sidekick                |
| `<leader>c` | Code/Symbols               |
| `<leader>d` | Debug                      |
| `<leader>f` | Find/Search                |
| `<leader>g` | Git                        |
| `<leader>h` | Git Hunks                  |
| `<leader>j` | Exit/Quit                  |
| `<leader>l` | Lua                        |
| `<leader>n` | Noice/Messages             |
| `<leader>o` | Obsidian (disabled)        |
| `<leader>r` | Harpoon                    |
| `<leader>t` | Test                       |
| `<leader>x` | Diagnostics                |
| `<leader>y` | Terminal                   |
| `<leader>z` | Toggles                    |
| `gr`        | LSP operations             |
| `gs`        | Surround                   |
| `[` / `]`   | Navigation (next/previous) |

---

## Custom Commands

### Formatting

- `:FormatEnable` - Enable autoformat on save
- `:FormatDisable` - Disable autoformat on save (add ! for buffer only)
- `:FormatToggle` - Toggle autoformat on save (add ! for buffer only)

### Git

- `:G` or `:Git` - Git command
- `:Gdiffsplit` - Git diff in split
- `:LazyGit` - Open LazyGit UI

### Projects

- `:FzfProjects` - Browse recent projects

### File Managers

- `:Oil` - Open Oil file browser
- `:Yazi` - Open Yazi file manager

### Debug

- All DAP commands available through nvim-dap

### Notes

- `:ObsidianOpen` - Open Obsidian note (plugin disabled)
- `:ObsidianNew` - Create new note (plugin disabled)
- `:ObsidianQuickSwitch` - Quick switch notes (plugin disabled)
- Plus many other Obsidian commands (plugin disabled)

### Other

- `:UndotreeToggle` - Toggle undo tree
- `:MarkdownPreview` - Start markdown preview (plugin disabled)
- `:Zi` - Zoxide interactive
