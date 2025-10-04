# zoxide.vim

Zoxide integration for smarter directory navigation.

## Usage

- `<leader>.` - Interactive zoxide directory picker

## Commands

- `:Z <query>` - Jump to directory matching query
- `:Zi` - Interactive directory picker
- `:Lz <query>` - Jump to directory in location list
- `:Lzi` - Interactive picker for location list

## Features

- Smart directory jumping based on frecency
- Fuzzy finding with interactive search
- Remembers frequently used directories
- Cross-session directory tracking
- Automatic database updates on directory change
- Integration with Vim's directory navigation

## Configuration

Located in: `lua/plugins/zoxide.lua`

Requires zoxide installed and initialized in shell.
