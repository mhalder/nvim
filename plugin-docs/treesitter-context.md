# nvim-treesitter-context

Show code context at the top of the window.

## What It Does

Displays the current function/class/block context at the top of the window when scrolling.

Example:

```
-- Context shown at top --
function foo()
  if condition then
    -- You are here (scrolled down)
    -- The function header stays visible at top
  end
end
```

## Features

- Shows function names
- Shows class definitions
- Shows if/for/while blocks
- Updates as you scroll
- Uses treesitter for accuracy
- Works with any language treesitter supports

## Commands

- `:TSContextToggle` - Toggle context on/off
- `:TSContextEnable` - Enable context
- `:TSContextDisable` - Disable context

## Configuration

Located in: `lua/plugins/treesitter-context.lua`

Uses default settings.
