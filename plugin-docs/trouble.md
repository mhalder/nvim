# trouble.nvim

Pretty diagnostics, references, and quickfix list.

## Usage

### Diagnostics

- `<leader>xx` - Toggle diagnostics (all)
- `<leader>xX` - Toggle buffer diagnostics

### Code Navigation

- `<leader>cs` - Toggle symbols
- `<leader>cS` - Toggle LSP

### Lists

- `<leader>xl` - Toggle location list
- `<leader>xq` - Toggle quickfix list

### Navigation

- `[q` - Previous trouble/quickfix item
- `]q` - Next trouble/quickfix item

## Features

- Pretty list of diagnostics
- References and implementations
- Quickfix and location lists
- Document symbols
- LSP definitions and references
- Keyboard navigation with jump support

## Configuration

Located in: `lua/plugins/trouble.lua`

LSP mode opens on the right side.
