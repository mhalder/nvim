# nvim-dap

Debug Adapter Protocol client for debugging applications.

## Usage

- `<leader>dc` - Continue debugging
- `<leader>di` - Step into
- `<leader>do` - Step over
- `<leader>du` - Step out
- `<leader>db` - Toggle breakpoint
- `<leader>dt` - Terminate debugger
- `<leader>dr` - Toggle debug UI

## Features

- DAP client with UI
- Automatic debugger installation via Mason
- Go debugging with delve
- Python debugging with debugpy
- Rust debugging with codelldb
- TypeScript/JavaScript debugging with js-debug-adapter
- Support for file, module, and attach modes
- Auto-opens UI on debug start

## Debuggers

- **delve** - Go
- **codelldb** - Rust, C, C++
- **js-debug-adapter** - TypeScript, JavaScript
- **debugpy** - Python (via virtual env or system python)

## Configuration

Located in: `lua/plugins/debug.lua`

Automatic installation enabled. Python uses VIRTUAL_ENV when available.
