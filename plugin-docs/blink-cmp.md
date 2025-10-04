# blink.cmp

Fast autocompletion plugin with LSP integration.

## Usage

Completion menu appears automatically while typing in insert mode.

## Keymaps

### Default Preset

- `<C-y>` - Accept completion
- `<C-n>` / `<C-p>` - Next/previous item
- `<Up>` / `<Down>` - Next/previous item
- `<C-space>` - Open menu or docs
- `<C-e>` - Hide menu
- `<C-k>` - Toggle signature help
- `<C-f>` - Scroll documentation down
- `<C-b>` - Scroll documentation up
- `<Tab>` - Next snippet field / sidekick suggestion

## Completion Sources

- LSP
- Path
- Snippets (LuaSnip)
- Lazydev (Neovim Lua API)
- Copilot

## Features

- Ghost text preview
- Automatic documentation popup (500ms delay)
- Signature help
- Lua-based fuzzy matching

## Configuration

Located in: `lua/plugins/blink-cmp.lua`

Uses Lua fuzzy matcher (no external dependencies required).
