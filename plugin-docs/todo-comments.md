# todo-comments.nvim

Highlight TODO, FIXME, NOTE, and other keywords in comments.

## Usage

Automatically highlights comment keywords:

- `TODO:` - Things to do
- `FIXME:` - Things to fix
- `HACK:` - Hacky solutions
- `WARN:` - Warnings
- `PERF:` - Performance improvements
- `NOTE:` - Notes and information
- `TEST:` - Testing-related

## Commands

- `:TodoQuickFix` - Open todos in quickfix list
- `:TodoLocList` - Open todos in location list
- `:TodoTelescope` - Search todos with Telescope (if available)
- `:TodoTrouble` - Open todos in Trouble (if available)

## Configuration

Located in: `lua/plugins/todo-comments.lua`

Signs are disabled for a cleaner gutter.
