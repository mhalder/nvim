# sidekick.nvim

AI assistant integration with Copilot Next Edit Suggestions.

## Usage

- `<tab>` - Jump to or apply next edit suggestion
- `<leader>aa` - Toggle AI CLI
- `<leader>as` - Select CLI from installed list
- `<leader>as` - Send visual selection (visual mode)
- `<leader>ap` - Select prompt
- `<c-.>` - Switch focus between editor and CLI
- `<leader>ac` - Toggle Claude CLI with focus
- `<leader>ai` - Toggle Aider CLI with focus

## Features

- Copilot Next Edit Suggestions (NES) integration
- Multiple AI CLI support (Claude, Aider)
- Tmux multiplexer backend
- Visual selection sending
- Context-aware prompt selection
- Seamless focus switching

## Configuration

Located in: `lua/plugins/sidekick.lua`

Uses tmux as multiplexer backend with tmux integration enabled.
