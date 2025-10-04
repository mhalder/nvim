# nvim-autopairs

Automatically insert closing brackets, quotes, and parentheses.

## Usage

Works automatically in insert mode:

- Type `(` → auto-inserts `)`
- Type `[` → auto-inserts `]`
- Type `{` → auto-inserts `}`
- Type `"` → auto-inserts `"`
- Type `'` → auto-inserts `'`

The plugin intelligently handles:

- Skipping closing pairs when cursor is on them
- Deleting pairs when backspacing opening character
- Fast wrap with Alt+e (surround selection with pairs)

## Configuration

Located in: `lua/plugins/autopairs.lua`

Uses default configuration for auto-pairing behavior.
