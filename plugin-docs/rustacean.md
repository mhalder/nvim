# rustaceanvim

Supercharge your Rust experience in Neovim.

## Commands

- `:RustLsp runnables` - List and run cargo commands
- `:RustLsp debuggables` - List and debug targets
- `:RustLsp expandMacro` - Expand macro under cursor
- `:RustLsp rebuildProcMacros` - Rebuild proc macros
- `:RustLsp moveItem up/down` - Move items up or down
- `:RustLsp hover actions` - Hover with actions
- `:RustLsp codeAction` - Code actions with grouping
- `:RustLsp openCargo` - Open Cargo.toml
- `:RustLsp parentModule` - Jump to parent module

## Features

- Automatic rust-analyzer LSP configuration
- No setup function needed, works out of the box
- Inlay hints support
- Code actions with rust-analyzer grouping
- Cargo integration
- Debugger integration
- Macro expansion
- Move item refactoring
- Standalone plugin, no lspconfig dependency

## Configuration

Located in: `lua/plugins/rustacean.lua`

Do not manually configure rust-analyzer in lspconfig. Version 6.x recommended.
