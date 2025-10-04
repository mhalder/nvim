# vim-sleuth

Automatically detect and set indentation settings (spaces vs tabs, indent size).

## Usage

Works automatically in the background. No configuration needed.

## How It Works

When you open a file, vim-sleuth:

1. Analyzes the file's existing indentation
2. Detects whether it uses tabs or spaces
3. Determines the indent width (2, 4, 8 spaces, etc.)
4. Automatically sets `shiftwidth`, `expandtab`, and related options

## Benefits

- No manual configuration per file
- Respects existing project conventions
- Works with any file type
- Lightweight and fast

## Configuration

Located in: `lua/plugins/sleuth.lua`

No options needed - just install and it works.
