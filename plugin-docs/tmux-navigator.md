# vim-tmux-navigator

Seamless navigation between tmux panes and vim splits.

## Usage

Navigate using standard vim split navigation keys:

- `<C-h>` - Navigate left
- `<C-j>` - Navigate down
- `<C-k>` - Navigate up
- `<C-l>` - Navigate right
- `<C-\>` - Navigate to previous split/pane

## How It Works

When in Neovim:

- Navigation keys move between vim splits
- At edge of vim, automatically moves to tmux pane

When in tmux:

- Same keys work to move between panes
- Seamlessly enters vim and navigates splits

## Requirements

Requires tmux configuration. Add to `.tmux.conf`:

```bash
# Smart pane switching with awareness of Vim splits
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
bind-key -n 'C-h' if-shell "$is_vim" 'send-keys C-h'  'select-pane -L'
bind-key -n 'C-j' if-shell "$is_vim" 'send-keys C-j'  'select-pane -D'
bind-key -n 'C-k' if-shell "$is_vim" 'send-keys C-k'  'select-pane -U'
bind-key -n 'C-l' if-shell "$is_vim" 'send-keys C-l'  'select-pane -R'
```

## Configuration

Located in: `lua/plugins/tmux-navigator.lua`
