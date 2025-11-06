# sidekick.nvim

AI assistant integration with Copilot Next Edit Suggestions.

## Usage

- `<tab>` - Goto/Apply next edit suggestion
- `<c-space>` - Toggle Sidekick (all modes)
- `<leader>aa` - Toggle AI CLI
- `<leader>as` - Select CLI from installed list
- `<leader>ad` - Detach CLI session
- `<leader>at` - Send selection/current (normal/visual mode)
- `<leader>af` - Send file
- `<leader>av` - Send visual selection (visual mode)
- `<leader>ap` - Select prompt (normal/visual mode)
- `<leader>ac` - Toggle Claude CLI with focus

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
