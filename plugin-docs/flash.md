# flash.nvim

Navigate your code with search labels and enhanced f/t motions.

## Usage

### Flash Jump

- `s` - Flash jump (Normal, Visual, Operator-pending modes)
  - Type characters to search
  - Shows labeled matches
  - Type label to jump

### Treesitter Selection

- `S` - Flash treesitter (Normal, Visual, Operator-pending modes)
  - Select treesitter nodes with labels
  - Useful for selecting functions, blocks, etc.

### Operator Mode

- `r` - Remote flash (Operator-pending mode)
  - Operate on remote text
  - Example: `dr` to delete remote text

- `R` - Treesitter search (Operator-pending, Visual modes)
  - Search and operate on treesitter nodes

### Command Mode

- `<C-s>` - Toggle flash search (Command mode)
  - Enhance command-line search with labels

## Configuration

Located in: `lua/plugins/flash.lua`
