# sidekick.nvim

AI CLI assistant integration with Next Edit Suggestions (NES).

## Usage

| Key          | Mode    | Description                           |
| ------------ | ------- | ------------------------------------- |
| `<tab>`      | n       | Jump to or apply next edit suggestion |
| `<c-space>`  | n,t,i,x | Toggle Sidekick CLI                   |
| `<leader>aa` | n       | Toggle Sidekick CLI                   |
| `<leader>as` | n       | Select CLI from available list        |
| `<leader>ad` | n       | Detach CLI session                    |
| `<leader>at` | n,x     | Send this (code context)              |
| `<leader>af` | n       | Send file                             |
| `<leader>av` | x       | Send visual selection                 |
| `<leader>ap` | n,x     | Select prompt                         |
| `<leader>ac` | n       | Toggle Claude CLI with focus          |

## Features

- Next Edit Suggestions (NES) integration
- Multiple AI CLI support (Claude, Aider, etc.)
- Tmux multiplexer backend
- Send code context, files, or selections to AI
- Context-aware prompt selection
- Seamless focus switching between editor and CLI

## Configuration

Located in: `lua/plugins/sidekick.lua`

Uses tmux as multiplexer backend with tmux integration enabled.
