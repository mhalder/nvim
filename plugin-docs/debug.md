# nvim-dap

Debug Adapter Protocol client for debugging applications.

## Usage

| Key          | Description        |
| ------------ | ------------------ |
| `<leader>dc` | Continue debugging |
| `<leader>di` | Step into          |
| `<leader>do` | Step over          |
| `<leader>du` | Step out           |
| `<leader>db` | Toggle breakpoint  |
| `<leader>dt` | Terminate debugger |
| `<leader>dr` | Toggle debug UI    |

## Features

- DAP client with UI (nvim-dap-ui)
- Automatic debugger installation via Mason
- Auto-opens UI on debug start
- Auto-closes UI on debug end

## Language Support

### Go

- Debugger: delve
- Launch file or attach to process

### Python

- Debugger: debugpy (via Mason)
- Configurations:
  - File (with stop on entry)
  - File with args
  - Module
  - Module with args

### Rust

- Debugger: codelldb
- Configurations:
  - Launch binary
  - Launch with args
  - Attach to process
  - Launch tests

### TypeScript/JavaScript

- Debugger: js-debug-adapter (pwa-node)
- Configurations:
  - Debug compiled JavaScript
  - Debug TypeScript (tsx)
  - Debug TypeScript (ts-node)
  - Debug JavaScript
  - Attach to Node process

## Installed Debuggers

- **delve** - Go
- **codelldb** - Rust
- **js-debug-adapter** - TypeScript, JavaScript
- **debugpy** - Python

## Configuration

Located in: `lua/plugins/debug.lua`

Automatic installation enabled via mason-nvim-dap.
