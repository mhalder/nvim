# Neovim Configuration

A modern, feature-rich Neovim configuration built with [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager.

## Documentation

📚 **[Complete Documentation](docs/index.md)** - Start here for comprehensive guides

### Quick Links

- **[Keymaps Reference](docs/keymaps.md)** - All keyboard shortcuts
- **[Options Reference](docs/options.md)** - All configured settings
- **[Plugins Overview](docs/plugins.md)** - All installed plugins
- **[Plugin-Specific Docs](plugin-docs/)** - Detailed plugin documentation
- **[Vim/Neovim Reference](docs/reference.md)** - General Vim concepts

## Features

- **LSP Support**: Full Language Server Protocol integration with `nvim-lspconfig`
- **Autocompletion**: Fast completion with `blink.cmp`
- **Syntax Highlighting**: Advanced syntax highlighting via TreeSitter
- **File Navigation**: Multiple file explorers (Neo-tree, Oil, Yazi)
- **Fuzzy Finding**: Powerful search with fzf-lua
- **Git Integration**: GitSigns, Lazygit, and Fugitive
- **Code Actions**: Flash motions, autopairs, and mini.nvim utilities
- **Testing**: Integrated test runner with Neotest
- **Debugging**: DAP support for debugging
- **AI Assistance**: GitHub Copilot and Claude integration
- **UI Enhancements**: Snacks, Noice, Which-key, Dressing, and more

## Requirements

- Neovim >= 0.9.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) for icons
- ripgrep (for fzf-lua)
- fd (optional, for faster file finding)
- Node.js (for some LSP servers)

## Installation

1. Backup your existing Neovim configuration:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

2. Clone this repository:

```bash
git clone <your-repo-url> ~/.config/nvim
```

3. Start Neovim:

```bash
nvim
```

lazy.nvim will automatically install all plugins on first launch.

## Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── options.lua      # Vim options
│   │   └── keymaps.lua      # General keymaps
│   └── plugins/             # Plugin configurations
│       ├── lspconfig.lua
│       ├── blink-cmp.lua
│       ├── treesitter.lua
│       ├── snacks.lua
│       ├── fzf-lua.lua
│       ├── neo-tree.lua
│       ├── gitsigns.lua
│       └── ...
└── lazy-lock.json           # Plugin version lockfile
```

## Key Bindings

**Leader key**: `<Space>` | **Local leader**: `\`

> 💡 **Tip**: Press `<leader>fk` to search all keymaps with fzf!

### Essential Keymaps

| Key                | Description         |
| ------------------ | ------------------- |
| `<leader><leader>` | Find files          |
| `<leader>fg`       | Live grep           |
| `<leader>,`        | Switch buffers      |
| `<leader>gs`       | Git status          |
| `<leader>gl`       | LazyGit             |
| `grn`              | Rename symbol       |
| `gra`              | Code action         |
| `grd`              | Go to definition    |
| `<leader>cf`       | Format code         |
| `<leader>xx`       | Toggle diagnostics  |
| `<C-space>`        | Toggle AI assistant |

### Keymap Organization

Keymaps are organized by prefix for easy discovery:

| Prefix      | Category    | Examples                                             |
| ----------- | ----------- | ---------------------------------------------------- |
| `<leader>f` | Find/Search | `fg` (grep), `fh` (help), `fk` (keymaps)             |
| `<leader>g` | Git         | `gs` (status), `gl` (lazygit), `gb` (blame)          |
| `<leader>h` | Git Hunks   | `hs` (stage), `hr` (reset), `hp` (preview)           |
| `<leader>d` | Debug       | `db` (breakpoint), `dc` (continue), `di` (step into) |
| `<leader>t` | Test        | `tt` (run file), `tr` (run nearest), `ts` (summary)  |
| `<leader>x` | Diagnostics | `xx` (toggle), `xf` (float), `xq` (quickfix)         |
| `<leader>a` | AI/Sidekick | `aa` (toggle), `ac` (claude), `ap` (prompt)          |
| `<leader>z` | Toggles     | `zd` (diagnostics), `zf` (format), `zh` (hints)      |
| `gr`        | LSP         | `grn` (rename), `gra` (action), `grd` (definition)   |

📖 **[Complete Keymaps Reference](docs/keymaps.md)** - See all keybindings

## Plugin Highlights

### Core Functionality

- **LSP**: Language servers, diagnostics, code actions
- **Completion**: Context-aware autocompletion with snippets
- **Treesitter**: Advanced syntax highlighting and text objects
- **Formatting**: Auto-formatting with conform.nvim
- **Linting**: Code linting with nvim-lint

### Navigation

- **fzf-lua**: Fuzzy finder for files, buffers, grep
- **Neo-tree**: File tree explorer
- **Oil**: Edit filesystem like a buffer
- **Yazi**: Terminal file manager integration
- **Harpoon**: Quick file navigation
- **Flash**: Enhanced motion jumping
- **Zoxide**: Smart directory jumping

### Git

- **GitSigns**: Git decorations and hunks
- **Lazygit**: Full-featured git UI
- **Fugitive**: Git commands in Neovim

### UI

- **Snacks**: Quality-of-life enhancements (notifications, smooth scrolling, bigfile optimization)
- **Which-key**: Keymap popup
- **Noice**: Enhanced UI for messages, cmdline, popupmenu
- **Dressing**: Better UI for vim.ui.select and vim.ui.input
- **Indent-blankline**: Indentation guides
- **Treesitter-context**: Show context of current function
- **Todo-comments**: Highlight TODO, FIXME, etc.

### Development

- **Neotest**: Test runner framework
- **DAP**: Debug Adapter Protocol
- **Trouble**: Pretty list for diagnostics, references, etc.
- **Copilot**: AI pair programming
- **Rustacean**: Enhanced Rust development

### Specialized

- **Render-markdown**: Beautiful markdown rendering
- **Tmux-navigator**: Seamless tmux/vim navigation

### Disabled Plugins

- **Obsidian**: Obsidian vault integration (disabled)
- **Markdown-preview**: Live markdown preview (disabled)

## Customization

### Adding Plugins

Create a new file in `lua/plugins/` with your plugin configuration:

```lua
return {
  "author/plugin-name",
  config = function()
    -- Plugin setup
  end,
}
```

### Modifying Options

Edit `lua/config/options.lua` to change Vim settings.

### Adding Keymaps

Edit `lua/config/keymaps.lua` for general keymaps, or add plugin-specific keymaps in the respective plugin file.

## Language Support

This configuration includes LSP support for multiple languages with pre-configured servers:

- **TypeScript/JavaScript**: LSP (ts_ls), formatting (prettier/prettierd/biome), linting (eslint_d/biome)
- **Python**: LSP (pyright), formatting (black, isort), linting (ruff), debugging (debugpy)
- **Lua**: LSP (lua_ls), formatting (stylua), linting (luacheck)
- **Bash**: LSP (bashls), formatting (shfmt), linting (shellcheck)
- **Markdown**: LSP (marksman), formatting (prettier), linting (markdownlint)
- **Terraform**: LSP (terraformls), formatting (hclfmt), linting (tflint)
- **Ansible**: LSP (ansiblels)
- **Docker**: Linting (hadolint)
- **YAML**: Formatting (yamlfmt)
- **JSON**: Formatting (jq)
- **Rust**: Enhanced support via rustacean.nvim

All language servers and tools are automatically installed via Mason on first launch.

Additional language servers can be installed manually:

```bash
:LspInstall <server_name>
```

## Updating

Update all plugins:

```
:Lazy update
```

Update specific plugin:

```
:Lazy update <plugin-name>
```

## Troubleshooting

- **Plugins not loading**: Run `:Lazy sync` to reinstall plugins
- **LSP not working**: Check `:LspInfo` for server status
- **Treesitter issues**: Run `:TSUpdate` to update parsers
- **Performance issues**: Run `:checkhealth` to diagnose problems

## Credits

Built with plugins from the amazing Neovim community. Special thanks to:

- [folke](https://github.com/folke) for lazy.nvim and many plugins
- [neovim](https://github.com/neovim/neovim) core team
- All plugin authors and contributors

## License

This project is licensed under the Beerware License. See the [LICENSE](LICENSE) file for details.
