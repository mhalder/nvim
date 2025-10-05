# snacks.nvim

A collection of small, quality-of-life plugins for Neovim.

## Features

### Enabled Modules

- **bigfile** - Optimize handling of large files by disabling heavy features
- **explorer** - File explorer with enhanced navigation
- **indent** - Animated indent guides
- **input** - Enhanced input UI
- **notifier** - Beautiful notification system
- **picker** - Fuzzy finder and picker interface
- **quickfile** - Fast file loading optimization
- **scope** - Scope-aware buffer management
- **scroll** - Smooth scrolling animations
- **statuscolumn** - Enhanced status column
- **words** - Word highlighting and navigation

### Disabled Modules

- **dashboard** - Startup dashboard (disabled in config)

## Configuration

Located in: `lua/plugins/snacks.lua`

The plugin is configured with priority 1000 and loads immediately (not lazy).

## Usage

Snacks.nvim provides various utilities that enhance the Neovim experience:

- Improved input dialogs via `vim.ui.input`
- Notification system for plugin messages
- File explorer capabilities
- Enhanced scrolling and visual feedback
- Optimizations for large files

## Dependencies

Used by:

- yazi.nvim (terminal file manager)

## Documentation

- [GitHub Repository](https://github.com/folke/snacks.nvim)
- [Full Documentation](https://github.com/folke/snacks.nvim/tree/main/docs)
