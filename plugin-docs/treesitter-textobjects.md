# nvim-treesitter-textobjects

Syntax aware text-objects using treesitter.

## Usage

### Select

- `af` - Around function
- `if` - Inside function
- `ac` - Around class
- `ic` - Inside class
- `as` - Language scope

## Features

- Treesitter-based text objects
- Automatic lookahead to next textobject
- Selection modes per textobject type
- Includes surrounding whitespace
- Function, class, and scope selections
- Works with operators (d, c, y, etc.)

## Configuration

Located in: `lua/plugins/treesitter-textobjects.lua`

Character-wise for parameters, line-wise for functions, block-wise for classes.
