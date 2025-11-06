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
- **codelldb** - Rust
- **js-debug-adapter** - TypeScript, JavaScript
- **debugpy** - Python

## Debug Configurations

### Python

- File: Debug current file with stopOnEntry
- File with args: Debug with command line arguments
- Module: Debug a Python module
- Module with args: Debug module with arguments

### Rust

- Launch: Debug Rust executable
- Launch with args: Debug with arguments
- Attach to process: Attach to running process
- Launch test: Debug Rust tests

### TypeScript/JavaScript

- Debug Compiled JavaScript: Debug compiled output
- Debug TypeScript (tsx): Debug using tsx runtime
- Debug TypeScript (ts-node): Debug using ts-node
- Debug JavaScript: Debug JavaScript files
- Attach to Node Process: Attach to running Node process

### Go

- Configured via nvim-dap-go plugin

## Configuration

Located in: `lua/plugins/debug.lua`

Automatic installation enabled via mason-nvim-dap.
