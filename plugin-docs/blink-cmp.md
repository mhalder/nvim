# blink.cmp

Fast autocompletion plugin with LSP integration.

## Usage

Completion menu appears automatically while typing in insert mode.

## Keymaps

| Key         | Description                        |
| ----------- | ---------------------------------- |
| `<C-y>`     | Accept completion                  |
| `<C-n>`     | Next item                          |
| `<C-p>`     | Previous item                      |
| `<C-space>` | Open menu or docs                  |
| `<C-e>`     | Hide menu                          |
| `<C-k>`     | Toggle signature help              |
| `<C-f>`     | Scroll documentation down          |
| `<C-b>`     | Scroll documentation up            |
| `<M-CR>`    | Accept and fallback                |
| `<Tab>`     | Next snippet field / sidekick jump |

## Completion Sources

| Source   | Description                 |
| -------- | --------------------------- |
| LSP      | Language server completions |
| Path     | File path completions       |
| Snippets | LuaSnip snippets            |
| Lazydev  | Neovim Lua API completions  |
| Copilot  | AI-powered suggestions      |

## Features

- Ghost text preview (enabled)
- Automatic documentation popup (500ms delay)
- Signature help (enabled)
- Lua-based fuzzy matching
- Sidekick NES integration via Tab

## Configuration

Located in: `lua/plugins/blink-cmp.lua`

Uses Lua fuzzy matcher (no external dependencies required).
