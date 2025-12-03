# noice.nvim

Experimental UI replacement for messages, cmdline, and popupmenu.

## Usage

| Key          | Mode  | Description                 |
| ------------ | ----- | --------------------------- |
| `<S-Enter>`  | c     | Redirect cmdline            |
| `<leader>nl` | n     | Show last message           |
| `<leader>nh` | n     | Show message history        |
| `<leader>na` | n     | Show all messages           |
| `<leader>nd` | n     | Dismiss messages            |
| `<leader>np` | n     | Message picker              |
| `<c-f>`      | i,n,s | Scroll forward in LSP docs  |
| `<c-b>`      | i,n,s | Scroll backward in LSP docs |

## Features

- Modern UI for messages and cmdline
- Command palette style cmdline
- LSP documentation scrolling
- Bottom search bar
- Long messages to split
- Message routing and filtering
- Markdown rendering for LSP

## Presets

- Bottom search enabled
- Command palette mode
- Long message split

## Configuration

Located in: `lua/plugins/noice.lua`

Filters common noise messages. Clears messages on lazy load.
