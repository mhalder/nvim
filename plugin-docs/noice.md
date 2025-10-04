# noice.nvim

Experimental UI replacement for messages, cmdline, and popupmenu.

## Usage

- `<S-Enter>` - Redirect cmdline (in command mode)
- `<leader>nl` - Show last message
- `<leader>nh` - Show message history
- `<leader>na` - Show all messages
- `<leader>nd` - Dismiss messages
- `<leader>np` - Message picker
- `<c-f>` - Scroll forward in LSP hover
- `<c-b>` - Scroll backward in LSP hover

## Features

- Modern UI for messages and cmdline
- Command palette style cmdline
- LSP documentation scrolling
- Bottom search bar
- Long messages to split
- Message routing and filtering
- Markdown rendering for LSP

## Configuration

Located in: `lua/plugins/noice.lua`

Filters common noise messages. Clears messages on lazy load.
