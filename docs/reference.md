# Vim/Neovim Reference Guide

A comprehensive reference for modern Vim/Neovim usage focusing on core editing concepts and workflows.

## Table of Contents

- [Core Concepts](#core-concepts)
  - [Modes](#modes)
  - [Text Objects](#text-objects)
  - [Motions](#motions)
- [Movement](#movement)
  - [Basic Movement](#basic-movement)
  - [Advanced Movement](#advanced-movement)
- [Editing](#editing)
  - [Basic Editing](#basic-editing)
  - [Visual Mode](#visual-mode)
  - [Operators and Motions](#operators-and-motions)
- [Search and Replace](#search-and-replace)
  - [Basic Search](#basic-search)
  - [Global Commands](#global-commands)
  - [Regular Expressions](#regular-expressions)
- [File Management](#file-management)
  - [Files and Args](#files-and-args)
  - [Buffers](#buffers)
  - [Windows](#windows)
  - [Tabs](#tabs)
- [Advanced Features](#advanced-features)
  - [Marks](#marks)
  - [Macros](#macros)
  - [Registers](#registers)
  - [Folding](#folding)
  - [Quickfix and Location Lists](#quickfix-and-location-lists)
- [Neovim Specific](#neovim-specific)
  - [Terminal Mode](#terminal-mode)
  - [Lua Commands](#lua-commands)
  - [LSP Concepts](#lsp-concepts)
- [Utilities](#utilities)
  - [Spell Checking](#spell-checking)
  - [Completion](#completion)
  - [Formatting and Indentation](#formatting-and-indentation)
  - [Diff Mode](#diff-mode)
- [Tips and Tricks](#tips-and-tricks)

---

## Core Concepts

### Modes

| Mode         | Key      | Description                              |
| ------------ | -------- | ---------------------------------------- |
| Normal       | `Esc`    | Default mode for navigation and commands |
| Insert       | `i,a,o`  | Text insertion                           |
| Visual       | `v`      | Character-wise selection                 |
| Visual Line  | `V`      | Line-wise selection                      |
| Visual Block | `Ctrl-v` | Block-wise selection                     |
| Command      | `:`      | Execute Ex commands                      |
| Terminal     | `:term`  | Terminal emulator (Neovim)               |
| Replace      | `R`      | Overwrite text                           |

### Text Objects

Text objects define boundaries for operations. Use with operators (`d`, `c`, `y`, `v`, etc.).

| Object | Inner | Around | Description       |
| ------ | ----- | ------ | ----------------- |
| Word   | `iw`  | `aw`   | Word              |
| WORD   | `iW`  | `aW`   | WORD (whitespace) |
| Sent   | `is`  | `as`   | Sentence          |
| Para   | `ip`  | `ap`   | Paragraph         |
| Block  | `ib`  | `ab`   | Block `()`        |
| Braces | `iB`  | `aB`   | Braces `{}`       |
| Quotes | `i"`  | `a"`   | Quoted string     |
| Tag    | `it`  | `at`   | HTML/XML tag      |

**Examples:**

```vim
ciw                 " Change inner word
da"                 " Delete around quotes (including quotes)
yap                 " Yank around paragraph
vi{                 " Visual select inside braces
```

### Motions

Motions move the cursor and can be combined with operators.

| Type       | Motion | Description                 |
| ---------- | ------ | --------------------------- |
| Character  | `h,l`  | Left, right                 |
| Line       | `j,k`  | Down, up                    |
| Word       | `w,b`  | Next word, previous word    |
| WORD       | `W,B`  | Next WORD, previous WORD    |
| Line start | `0,^`  | Start of line, first char   |
| Line end   | `$`    | End of line                 |
| File       | `gg,G` | Top of file, bottom of file |
| Search     | `/,?`  | Search forward, backward    |

---

## Movement

### Basic Movement

| Command                | Description                               |
| ---------------------- | ----------------------------------------- |
| `h,j,k,l`              | Left, down, up, right                     |
| `gj,gk`                | Move by screen lines (wrapped text)       |
| `w,b`                  | Next/previous word                        |
| `W,B`                  | Next/previous WORD (whitespace-separated) |
| `e,ge`                 | End of word, end of previous word         |
| `f{char}`,`t{char}`    | Find/till character forward               |
| `F{char}`,`T{char}`    | Find/till character backward              |
| `;`,`,`                | Repeat last f/t motion forward/backward   |
| `0,$`                  | Start and end of line                     |
| `^,g_`                 | First/last non-blank character            |
| `Ctrl-u`,`Ctrl-d`      | Half page up/down                         |
| `Ctrl-b`,`Ctrl-f`      | Full page up/down                         |
| `H,M,L`                | Top, middle, bottom of screen             |
| `gg,G`                 | Top, bottom of file                       |
| `{line}G` or `:{line}` | Go to line number                         |

### Advanced Movement

| Command           | Description                               |
| ----------------- | ----------------------------------------- |
| `%`               | Jump to matching bracket/paren            |
| `{`,`}`           | Previous/next paragraph                   |
| `(`,`)`           | Previous/next sentence                    |
| `[[`,`]]`         | Previous/next section/function            |
| `[{`,`]}`         | Go to beginning/end of block              |
| `[m`,`]m`         | Previous/next method (some languages)     |
| `gd`              | Go to local definition                    |
| `gD`              | Go to global definition                   |
| `gf`              | Go to file under cursor                   |
| `Ctrl-o`          | Jump to older position in jump list       |
| `Ctrl-i` or `Tab` | Jump to newer position in jump list       |
| `g;`,`g,`         | Go to older/newer position in change list |
| `` ` ``,`'`       | Jump to mark (exact/line)                 |

---

## Editing

### Basic Editing

| Command      | Description                         |
| ------------ | ----------------------------------- |
| `i,I`        | Insert before cursor, start of line |
| `a,A`        | Append after cursor, end of line    |
| `o,O`        | Open line below/above               |
| `x,X`        | Delete char under/before cursor     |
| `s,S`        | Substitute char/line                |
| `r{char}`    | Replace single character            |
| `R`          | Replace mode                        |
| `~`          | Toggle case                         |
| `gu{motion}` | Lowercase                           |
| `gU{motion}` | Uppercase                           |
| `J`          | Join lines (with space)             |
| `gJ`         | Join lines (without space)          |
| `.`          | Repeat last change                  |
| `u`          | Undo                                |
| `Ctrl-r`     | Redo                                |

### Visual Mode

| Command  | Description                                |
| -------- | ------------------------------------------ |
| `v`      | Character-wise visual                      |
| `V`      | Line-wise visual                           |
| `Ctrl-v` | Block-wise visual                          |
| `gv`     | Reselect last visual selection             |
| `o`      | Toggle cursor to other end of selection    |
| `O`      | Toggle cursor to other corner (block mode) |
| `<`,`>`  | Indent left/right (keeps selection)        |
| `=`      | Auto-indent selection                      |
| `I`      | Insert at start (block mode)               |
| `A`      | Append at end (block mode)                 |
| `c`      | Change selection                           |
| `d`      | Delete selection                           |
| `y`      | Yank selection                             |
| `~`      | Toggle case                                |

### Operators and Motions

Operators can be combined with motions/text objects:

| Operator | Description |
| -------- | ----------- |
| `d`      | Delete      |
| `c`      | Change      |
| `y`      | Yank (copy) |
| `>`      | Indent      |
| `<`      | Dedent      |
| `=`      | Auto-indent |
| `gu`     | Lowercase   |
| `gU`     | Uppercase   |
| `g~`     | Toggle case |

**Examples:**

```vim
daw                 " Delete a word
ci"                 " Change inside quotes
yap                 " Yank a paragraph
>i{                 " Indent inside braces
=G                  " Auto-indent to end of file
gUiw                " Uppercase inner word
```

---

## Search and Replace

### Basic Search

| Command             | Description                               |
| ------------------- | ----------------------------------------- |
| `/pattern`          | Search forward                            |
| `?pattern`          | Search backward                           |
| `n`,`N`             | Next/previous match                       |
| `*`,`#`             | Search word under cursor forward/backward |
| `g*`,`g#`           | Search partial word under cursor          |
| `/\<word\>`         | Search for whole word                     |
| `/\v`               | Very magic mode (less escaping)           |
| `:%s/old/new/g`     | Replace all occurrences in file           |
| `:%s/old/new/gc`    | Replace with confirmation                 |
| `:s/old/new/g`      | Replace in current line                   |
| `:'<,'>s/old/new/g` | Replace in visual selection               |
| `&`                 | Repeat last substitute                    |
| `/{pattern}/e`      | Move cursor to end of match               |

**Search Options:**

```vim
:set ignorecase                     " Case insensitive search
:set smartcase                      " Case sensitive if uppercase in pattern
:set hlsearch                       " Highlight search results
:set incsearch                      " Incremental search
:nohlsearch or :noh                 " Clear search highlighting
```

### Global Commands

The `:g` command executes a command on lines matching a pattern.

```vim
:g/pattern/command                  " Execute command on matching lines
:g!/pattern/command or :v/pattern/command  " Execute on non-matching lines
```

**Examples:**

```vim
:g/TODO/d                           " Delete all lines containing TODO
:g/^$/d                             " Delete all empty lines
:g/pattern/normal @a                " Execute macro a on matching lines
:g/import/t$                        " Copy all import lines to end
:g/console/s/log/error/g            " Replace log with error in lines with console
:g/^/m0                             " Reverse all lines
:v/pattern/d                        " Delete lines NOT matching pattern
```

### Regular Expressions

| Pattern        | Magic Mode | Very Magic (`\v`) | Description           |
| -------------- | ---------- | ----------------- | --------------------- |
| Literal        | `.`        | `.`               | Any character         |
| Zero or more   | `*`        | `*`               | Zero or more          |
| One or more    | `\+`       | `+`               | One or more           |
| Zero or one    | `\=`       | `=` or `?`        | Optional              |
| Group          | `\(\)`     | `()`              | Capture group         |
| Alternate      | `\&#124;`  | `&#124;`          | Or                    |
| Character set  | `[abc]`    | `[abc]`           | Any of a, b, c        |
| Range          | `\{n,m}`   | `{n,m}`           | Between n and m times |
| Word boundary  | `\<`,`\>`  | `<`,`>`           | Word boundaries       |
| Whitespace     | `\s`       | `\s`              | Whitespace character  |
| Non-whitespace | `\S`       | `\S`              | Non-whitespace        |
| Digit          | `\d`       | `\d`              | Digit                 |
| Word char      | `\w`       | `\w`              | Word character        |

**Examples:**

```vim
/\v(foo|bar)                        " Match foo or bar
/\v\d{3}-\d{4}                      " Match 123-4567
:%s/\v(\w+)\s+(\w+)/\2 \1/          " Swap two words
/\v^.{80,}                          " Lines longer than 80 chars
:%s/\s\+$//                         " Remove trailing whitespace
```

---

## File Management

### Files and Args

```vim
:e filename                         " Edit file
:e!                                 " Reload current file (discard changes)
:w                                  " Write (save)
:w filename                         " Save as
:wa                                 " Write all buffers
:q                                  " Quit
:q!                                 " Quit without saving
:wq or :x                           " Write and quit
:saveas filename                    " Save as and switch to new file
:r filename                         " Read file into current buffer
:r !command                         " Read command output into buffer

" Args list
:args *.js                          " Set args to all JS files
:args                               " Show current args
:argdo %s/old/new/g | update        " Execute on all args
:n, :N or :next, :prev              " Next/previous arg
```

### Buffers

| Command                      | Description                    |
| ---------------------------- | ------------------------------ |
| `:ls` or `:buffers`          | List all buffers               |
| `:b {number}` or `:b {name}` | Switch to buffer               |
| `:bn`, `:bp`                 | Next/previous buffer           |
| `:bf`, `:bl`                 | First/last buffer              |
| `:b#` or `Ctrl-6`            | Switch to alternate buffer     |
| `:bd`                        | Delete (close) buffer          |
| `:bd!`                       | Force delete buffer            |
| `:%bd`                       | Delete all buffers             |
| `:%bd\|e#`                   | Delete all except current      |
| `:bufdo {cmd}`               | Execute command on all buffers |

**Buffer Indicators:**

- `%a` - Active buffer in current window
- `#` - Alternate buffer (Ctrl-6)
- `+` - Modified buffer
- `h` - Hidden buffer
- `=` - Readonly buffer

### Windows

| Command                 | Description              |
| ----------------------- | ------------------------ |
| `:split` or `Ctrl-w s`  | Horizontal split         |
| `:vsplit` or `Ctrl-w v` | Vertical split           |
| `:sp {file}`            | Split and open file      |
| `Ctrl-w w`              | Cycle through windows    |
| `Ctrl-w h,j,k,l`        | Navigate to window       |
| `Ctrl-w H,J,K,L`        | Move window              |
| `Ctrl-w r,R`            | Rotate windows           |
| `Ctrl-w x`              | Exchange windows         |
| `Ctrl-w =`              | Equalize window sizes    |
| `Ctrl-w _`              | Maximize height          |
| `Ctrl-w \|`             | Maximize width           |
| `Ctrl-w +,-`            | Increase/decrease height |
| `Ctrl-w >,<`            | Increase/decrease width  |
| `Ctrl-w o` or `:only`   | Close all other windows  |
| `Ctrl-w c` or `:close`  | Close current window     |
| `Ctrl-w T`              | Move window to new tab   |

### Tabs

| Command                | Description                 |
| ---------------------- | --------------------------- |
| `:tabnew`              | New tab                     |
| `:tabnew {file}`       | Open file in new tab        |
| `:tabclose` or `:tabc` | Close tab                   |
| `:tabonly` or `:tabo`  | Close all other tabs        |
| `gt` or `:tabn`        | Next tab                    |
| `gT` or `:tabp`        | Previous tab                |
| `{n}gt`                | Go to tab n                 |
| `:tabm {n}`            | Move tab to position n      |
| `:tabs`                | List all tabs               |
| `:tabdo {cmd}`         | Execute command on all tabs |

---

## Advanced Features

### Marks

| Command            | Description                    |
| ------------------ | ------------------------------ |
| `m{a-z}`           | Set local mark (within file)   |
| `m{A-Z}`           | Set global mark (across files) |
| `` `{mark} ``      | Jump to exact position of mark |
| `'{mark}`          | Jump to line of mark           |
| `:marks`           | List all marks                 |
| `:delmarks {mark}` | Delete mark                    |
| `:delmarks!`       | Delete all local marks         |

**Special Marks:**

- `` `. `` - Last change position
- `` `^ `` - Last insert position
- `` `< `` - Start of last visual selection
- `` `> `` - End of last visual selection
- `` `[ `` - Start of last change/yank
- `` `] `` - End of last change/yank

### Macros

| Command       | Description           |
| ------------- | --------------------- |
| `q{register}` | Start recording macro |
| `q`           | Stop recording        |
| `@{register}` | Play macro            |
| `@@`          | Replay last macro     |
| `{n}@{reg}`   | Execute macro n times |

**Example workflow:**

```vim
qq                  " Start recording to register q
{commands}          " Perform actions
q                   " Stop recording
@q                  " Execute once
100@q               " Execute 100 times
```

### Registers

| Register  | Description                        |
| --------- | ---------------------------------- |
| `"a`-`"z` | Named registers (26 available)     |
| `"0`      | Last yank                          |
| `"1`-`"9` | Delete history (1 = most recent)   |
| `""`      | Unnamed register (default)         |
| `"+`      | System clipboard (X11 primary)     |
| `"*`      | System selection (X11 clipboard)   |
| `"_`      | Black hole register (doesn't save) |
| `"/`      | Last search pattern                |
| `":`      | Last command                       |
| `".`      | Last inserted text                 |
| `"%`      | Current filename                   |
| `"#`      | Alternate filename                 |

**Usage:**

```vim
"ayy                " Yank line to register a
"ap                 " Paste from register a
:reg                " Show all registers
:reg a b c          " Show specific registers
"+y                 " Yank to clipboard
"+p                 " Paste from clipboard
"_d                 " Delete without saving (black hole)
```

### Folding

| Command      | Description                     |
| ------------ | ------------------------------- |
| `zf{motion}` | Create fold                     |
| `za`         | Toggle fold                     |
| `zo`         | Open fold                       |
| `zc`         | Close fold                      |
| `zR`         | Open all folds                  |
| `zM`         | Close all folds                 |
| `zr`         | Reduce folding (open one level) |
| `zm`         | More folding (close one level)  |
| `zj`,`zk`    | Move to next/previous fold      |
| `[z`,`]z`    | Move to start/end of fold       |
| `zd`         | Delete fold                     |
| `zE`         | Eliminate all folds             |

**Fold Methods:**

```vim
:set foldmethod=manual              " Manual folding
:set foldmethod=indent              " Fold by indentation
:set foldmethod=syntax              " Fold by syntax
:set foldmethod=expr                " Fold by expression
:set foldmethod=marker              " Fold by markers ({{{ }}})
```

### Quickfix and Location Lists

Essential for LSP diagnostics, search results, and errors.

| Command         | Description                              |
| --------------- | ---------------------------------------- |
| `:copen`        | Open quickfix window                     |
| `:cclose`       | Close quickfix window                    |
| `:cn`, `:cnext` | Next item                                |
| `:cp`, `:cprev` | Previous item                            |
| `:cfirst`       | First item                               |
| `:clast`        | Last item                                |
| `:cc {n}`       | Jump to item n                           |
| `:cdo {cmd}`    | Execute command on each quickfix entry   |
| `:cfdo {cmd}`   | Execute command on each file in quickfix |

**Location List** (window-local):

```vim
:lopen, :lclose                     " Open/close location list
:ln, :lp                            " Next/previous
:ll {n}                             " Jump to item
```

**Common uses:**

```vim
:vimgrep /pattern/ **/*.js          " Search and populate quickfix
:cn                                 " Jump through results
:cdo s/old/new/g | update           " Replace in all results
```

---

## Neovim Specific

### Terminal Mode

| Command                | Description                       |
| ---------------------- | --------------------------------- |
| `:terminal` or `:term` | Open terminal                     |
| `:split \| term`       | Terminal in horizontal split      |
| `:vsplit \| term`      | Terminal in vertical split        |
| `Ctrl-\\ Ctrl-n`       | Exit terminal mode to normal mode |
| `i` or `a`             | Re-enter terminal mode            |
| `:tnoremap`            | Terminal mode keymapping          |

**Useful mappings:**

```vim
" Exit terminal mode with Esc
tnoremap <Esc> <C-\><C-n>
```

### Lua Commands

Execute Lua code in Neovim:

```vim
:lua print("Hello")                 " Execute Lua
:lua vim.cmd('echo "hi"')           " Call Vim command from Lua
:lua =vim.inspect(vim.api)          " Inspect Lua table

" In config files
lua << EOF
  local opt = vim.opt
  opt.number = true
EOF
```

### LSP Concepts

While LSP configuration is plugin-specific, core concepts:

**Common LSP actions** (check your plugin docs for exact keybinds):

- Go to definition (`gd`)
- Find references
- Hover documentation (`K`)
- Code actions
- Rename symbol
- Format document
- Show diagnostics

**Diagnostic navigation:**

```vim
]d, [d                              " Next/previous diagnostic (common binding)
:lua vim.diagnostic.open_float()    " Show diagnostic in float
:lua vim.diagnostic.setloclist()    " Load diagnostics to location list
```

---

## Utilities

### Spell Checking

| Command                | Description                        |
| ---------------------- | ---------------------------------- |
| `:set spell`           | Enable spell checking              |
| `:set nospell`         | Disable spell checking             |
| `:set spelllang=en_us` | Set language                       |
| `]s`, `[s`             | Next/previous misspelled word      |
| `z=`                   | Suggest corrections                |
| `zg`                   | Add word to dictionary             |
| `zw`                   | Mark word as incorrect             |
| `zug`, `zuw`           | Undo zg/zw                         |
| `zG`                   | Add to internal wordlist (session) |

### Completion

| Command         | Description                      |
| --------------- | -------------------------------- |
| `Ctrl-n`        | Next completion match            |
| `Ctrl-p`        | Previous completion match        |
| `Ctrl-x Ctrl-n` | Complete from current file       |
| `Ctrl-x Ctrl-f` | Complete filename                |
| `Ctrl-x Ctrl-l` | Complete whole line              |
| `Ctrl-x Ctrl-o` | Omni completion (language-aware) |
| `Ctrl-x Ctrl-k` | Dictionary completion            |
| `Ctrl-x Ctrl-s` | Spelling suggestions             |

### Formatting and Indentation

| Command      | Description                |
| ------------ | -------------------------- |
| `==`         | Auto-indent current line   |
| `={motion}`  | Auto-indent motion         |
| `gg=G`       | Auto-indent entire file    |
| `>>`         | Indent line right          |
| `<<`         | Indent line left           |
| `{n}>>`      | Indent n lines             |
| `>{motion}`  | Indent motion              |
| `gq{motion}` | Format text (word wrap)    |
| `gqap`       | Format paragraph           |
| `J`          | Join lines (with space)    |
| `gJ`         | Join lines (without space) |

**Indentation settings:**

```vim
:set tabstop=4                      " Tab width
:set shiftwidth=4                   " Indent width
:set expandtab                      " Use spaces instead of tabs
:set softtabstop=4                  " Spaces for tab key
:retab                              " Convert tabs to spaces
```

### Diff Mode

| Command           | Description                      |
| ----------------- | -------------------------------- |
| `vimdiff f1 f2`   | Start diff from command line     |
| `:diffsplit file` | Diff current file with another   |
| `:diffthis`       | Make current window part of diff |
| `:diffoff`        | Turn off diff mode               |
| `do`              | Diff obtain (get changes)        |
| `dp`              | Diff put (send changes)          |
| `]c`, `[c`        | Next/previous change             |
| `:diffupdate`     | Recalculate diff                 |

---

## Tips and Tricks

### Essential Patterns

```vim
" Reverse all lines
:g/^/m0

" Delete empty lines
:g/^$/d

" Delete trailing whitespace
:%s/\s\+$//

" Sort lines
:%sort or :'<,'>sort

" Remove duplicate lines
:%!uniq or :'<,'>!uniq

" Format JSON (requires jq)
:%!jq .

" Increment numbers
Ctrl-a (normal mode)

" Decrement numbers
Ctrl-x (normal mode)

" Visual block insert
Ctrl-v (select), I (insert), Esc Esc

" Multiple cursors effect
:g/pattern/normal @q              " Apply macro to matching lines

" Swap lines
ddp or ddkP

" Move line up/down
:m +1 or :m -2

" Change directory to current file
:cd %:p:h

" Copy filename/path
:let @+ = expand("%")              " Relative path
:let @+ = expand("%:p")            " Absolute path
```

### Command Line Tricks

| Command        | Description                           |
| -------------- | ------------------------------------- |
| `q:`           | Open command history window           |
| `q/`           | Open search history window            |
| `Ctrl-f`       | Open command window from command line |
| `Ctrl-r {reg}` | Insert register content in command    |
| `%%`           | Expand to current filename            |
| `:!!`          | Repeat last shell command             |
| `:%!command`   | Filter file through command           |
| `:.!command`   | Filter line through command           |

### Navigation Tricks

```vim
" Jump to line with text
/{pattern}<CR>

" Jump to column 42
42|

" Jump to 50% of file
50%

" Open file under cursor in split
Ctrl-w f

" Open file under cursor in tab
Ctrl-w gf

" View jumplist
:jumps

" View changelist
:changes

" Go to last insert and start inserting
gi
```

### Multi-file Editing

```vim
" Search and replace across files
:args **/*.js
:argdo %s/old/new/ge | update

" Load search results into args
:grep -r pattern .
:cdo s/old/new/g | update

" Edit all files with pattern
:vim /pattern/ **
:cdo {command}
```

### Recovery and Sessions

```vim
" Recover from swap file
vim -r filename

" List swap files
:sw

" Save session
:mksession ~/session.vim

" Load session
:source ~/session.vim or vim -S ~/session.vim

" View undo tree
:earlier 5m                        " Go to 5 minutes ago
:later 5m                          " Go forward 5 minutes
:undolist                          " View undo branches
```

---

## Additional Resources

- `:help` - Built-in documentation (extensive!)
- `:help user-manual` - User manual
- `:help quickref` - Quick reference
- `:Tutor` - Interactive tutorial (Neovim)
- `vimtutor` - Command-line tutorial

**Useful help topics:**

```vim
:help motion.txt
:help pattern.txt
:help cmdline.txt
:help options.txt
:help lua.txt                      " Neovim
:help lsp                          " Neovim
```

---

## License

This reference guide is based on the Vim/Neovim community knowledge and years of practical usage.
