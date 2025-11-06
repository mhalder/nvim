# Documentation Index

Complete documentation for this Neovim configuration.

## Quick Navigation

### Core Documentation

- **[Keymaps Reference](keymaps.md)** - Complete list of all keyboard shortcuts
- **[Options Reference](options.md)** - All configured Neovim options and settings
- **[Plugins Overview](plugins.md)** - List of all installed plugins with descriptions
- **[Vim/Neovim Reference](reference.md)** - General Vim/Neovim concepts and commands

### Plugin-Specific Documentation

See [plugin-docs/](../plugin-docs/) for detailed documentation on individual plugins.

## Getting Started

### First Time Setup

1. **Install Neovim** (>= 0.9.0)
2. **Clone this config** to `~/.config/nvim`
3. **Launch Neovim** - plugins will auto-install
4. **Read the keymaps** - Start with [keymaps.md](keymaps.md)

### Key Concepts

#### Leader Keys

- **Leader**: Space (`<Space>`)
- **Local Leader**: Backslash (`\`)

#### Keymap Organization

All keymaps are organized by prefix:

| Prefix      | Category    | Examples                          |
| ----------- | ----------- | --------------------------------- |
| `<leader>f` | Find/Search | `<leader>fg` = live grep          |
| `<leader>g` | Git         | `<leader>gs` = git status         |
| `<leader>h` | Git Hunks   | `<leader>hs` = stage hunk         |
| `<leader>d` | Debug       | `<leader>db` = toggle breakpoint  |
| `<leader>t` | Test        | `<leader>tt` = run test file      |
| `<leader>x` | Diagnostics | `<leader>xx` = toggle diagnostics |
| `<leader>a` | AI/Sidekick | `<leader>aa` = toggle AI CLI      |
| `<leader>z` | Toggles     | `<leader>zd` = toggle diagnostics |
| `<leader>l` | Lua         | `<leader>le` = eval line          |
| `<leader>j` | Exit/Quit   | `<leader>jk` = save               |

See [keymaps.md](keymaps.md) for the complete list.

## Essential Keymaps

### Navigation

- `<leader><leader>` - Find files
- `<leader>fg` - Live grep
- `<leader>,` - Switch buffers
- `-` - Oil file browser
- `\` - NeoTree file explorer

### Git

- `<leader>gs` - Git status
- `<leader>gl` - LazyGit
- `]c` / `[c` - Next/prev git change

### LSP

- `grn` - Rename
- `gra` - Code action
- `grd` - Go to definition
- `grr` - Find references
- `<leader>cf` - Format code

### AI

- `<C-space>` - Toggle Sidekick
- `<Tab>` - Apply AI edit suggestion
- `<leader>aa` - Toggle AI CLI

## Configuration Files

### Structure

```
~/.config/nvim/
├── init.lua                      # Entry point
├── lua/
│   ├── config/
│   │   ├── options.lua           # Vim options
│   │   └── keymaps.lua           # Core keymaps
│   └── plugins/                  # Plugin configurations
│       ├── lspconfig.lua
│       ├── blink-cmp.lua
│       ├── fzf-lua.lua
│       └── ...
├── docs/                         # Documentation
│   ├── index.md                  # This file
│   ├── keymaps.md
│   ├── options.md
│   ├── plugins.md
│   └── reference.md
├── plugin-docs/                  # Per-plugin docs
│   ├── lspconfig.md
│   ├── fzf-lua.md
│   └── ...
└── lazy-lock.json               # Plugin versions
```

### Key Files

- `init.lua` - Sets up lazy.nvim, leader keys, loads config
- `lua/config/options.lua` - All Neovim options ([docs](options.md))
- `lua/config/keymaps.lua` - Core keymaps ([docs](keymaps.md))
- `lua/plugins/*.lua` - Individual plugin configurations

## Common Tasks

### Finding Things

- **Files**: `<leader><leader>` or `<leader>ff`
- **Text**: `<leader>fg` (live grep)
- **Buffers**: `<leader>,`
- **Help**: `<leader>fh`
- **Keymaps**: `<leader>fk`

### Working with Code

- **Format**: `<leader>cf`
- **Rename**: `grn`
- **Code action**: `gra`
- **Diagnostics**: `<leader>xx`

### Git Operations

- **Status**: `<leader>gs` (Fugitive)
- **LazyGit**: `<leader>gl`
- **Stage hunk**: `<leader>hs`
- **Blame**: `<leader>hb`

### Debugging

- **Toggle breakpoint**: `<leader>db`
- **Continue**: `<leader>dc`
- **Step over**: `<leader>do`
- **Step into**: `<leader>di`

### Testing

- **Run file**: `<leader>tt`
- **Run nearest**: `<leader>tr`
- **Toggle summary**: `<leader>ts`

## Plugin Categories

### Core Functionality

- **treesitter** - Syntax parsing
- **lspconfig** - Language servers
- **blink-cmp** - Completion
- **conform** - Formatting
- **lint** - Linting

### Navigation

- **fzf-lua** - Fuzzy finder
- **neo-tree** - File tree
- **oil** - File browser
- **flash** - Quick jumping
- **harpoon** - File bookmarks

### Git

- **gitsigns** - Git indicators
- **fugitive** - Git commands
- **lazygit** - Git UI

### Development

- **nvim-dap** - Debugging
- **neotest** - Testing
- **trouble** - Diagnostics UI

### UI

- **which-key** - Keymap help
- **snacks** - Utilities
- **noice** - Better UI

### AI

- **copilot** - GitHub Copilot
- **sidekick** - Claude AI

See [plugins.md](plugins.md) for the complete list.

## Plugin Management

### Commands

- `:Lazy` - Open plugin manager
- `:Lazy update` - Update plugins
- `:Lazy sync` - Sync with lockfile
- `:Lazy clean` - Remove unused plugins

### LSP/Mason

- `:Mason` - Open Mason installer
- `:LspInfo` - LSP status
- `:LspInstall <server>` - Install LSP server

## Customization

### Local Overrides

Create a local config file (not tracked by git):

```lua
-- ~/.config/nvim/lua/config/local.lua
vim.opt.relativenumber = false
-- Add your custom settings
```

Then load it in `init.lua`:

```lua
pcall(require, "config.local")
```

### Adding Plugins

Create a new file in `lua/plugins/`:

```lua
-- lua/plugins/myplugin.lua
return {
  "author/plugin-name",
  event = "VeryLazy",
  config = function()
    require("plugin-name").setup({})
  end,
}
```

Restart Neovim or run `:Lazy sync`.

## Troubleshooting

### Common Issues

1. **Plugins not loading**
   - Run `:Lazy sync`
   - Check `:Lazy` for errors

2. **LSP not working**
   - Run `:LspInfo`
   - Run `:Mason` to check server installation

3. **Treesitter errors**
   - Run `:TSUpdate`
   - Run `:checkhealth nvim-treesitter`

4. **Performance issues**
   - Run `:checkhealth`
   - Check if bigfile detection is working (snacks.nvim)

### Health Checks

Run health checks for specific components:

- `:checkhealth`
- `:checkhealth nvim-treesitter`
- `:checkhealth mason`
- `:checkhealth lazy`

## Learning Resources

### Vim Basics

- Run `:Tutor` for interactive tutorial
- Read [reference.md](reference.md) for Vim/Neovim concepts

### Plugin Documentation

- `:help <plugin-name>` - Built-in help
- Check [plugin-docs/](../plugin-docs/) for quick reference
- Visit plugin GitHub repos for full docs

### Which-key

Press any leader key and wait - which-key will show available keymaps!

## Updates

### Update All Plugins

```
:Lazy update
```

### Update Lockfile

After updating, the lockfile (`lazy-lock.json`) will be updated. Commit it to keep plugin versions consistent.

### Breaking Changes

Check plugin changelogs before updating. Some plugins may require config changes.

## Contributing

If you find issues or want to improve the documentation:

1. Update the relevant file
2. Test the changes
3. Commit with a clear message

## Additional Documentation

- **Per-plugin docs**: See [plugin-docs/](../plugin-docs/)
- **Main README**: See [../README.md](../README.md)
- **Vim reference**: See [reference.md](reference.md)

---

**Quick Tip**: Press `<leader>fk` to fuzzy search all keymaps!
