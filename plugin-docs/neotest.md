# neotest

Framework for interacting with tests within NeoVim.

## Usage

- `<leader>tt` - Run file tests
- `<leader>tT` - Run all tests
- `<leader>tr` - Run nearest test
- `<leader>tl` - Run last test
- `<leader>ts` - Toggle summary
- `<leader>to` - Show output
- `<leader>tO` - Toggle output panel
- `<leader>tS` - Stop tests
- `<leader>tw` - Toggle watch mode

## Features

- Language-agnostic testing framework
- Virtual text status indicators
- Auto-open output on run
- Python adapter support
- Summary window
- Watch mode
- Quickfix integration
- Compact diagnostic messages

## Configuration

Located in: `lua/plugins/neotest.lua`

Configured with neotest-python adapter.
