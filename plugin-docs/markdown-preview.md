# markdown-preview.nvim

Markdown preview in the browser.

**STATUS: DISABLED** - This plugin is currently disabled (enabled = false in config).

## Commands

- `:MarkdownPreview` - Open preview
- `:MarkdownPreviewStop` - Close preview
- `:MarkdownPreviewToggle` - Toggle preview

## Features

- Real-time preview in browser
- Synchronized scrolling
- Auto-close preview on buffer close
- Works with markdown files

## Configuration

Located in: `lua/plugins/markdown-preview.lua`

Requires npm to build. Lazy loads on markdown files and commands.
