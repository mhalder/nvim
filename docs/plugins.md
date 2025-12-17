# Installed Plugins

Complete list of all plugins configured in this Neovim setup, organized by category.

All plugins are managed by [lazy.nvim](https://github.com/folke/lazy.nvim).

**Note:** Some plugins are installed but currently disabled:

- **obsidian.nvim** - Disabled (enabled = false)
- **markdown-preview.nvim** - Disabled (enabled = false)

**Active Colorscheme:** tokyonight-night

## Table of Contents

- [Core Functionality](#core-functionality)
- [Navigation and Finding](#navigation-and-finding)
- [File Management](#file-management)
- [Code Editing](#code-editing)
- [LSP and Language Support](#lsp-and-language-support)
- [Completion](#completion)
- [Git Integration](#git-integration)
- [Debugging and Testing](#debugging-and-testing)
- [AI and Copilot](#ai-and-copilot)
- [UI Enhancements](#ui-enhancements)
- [Markdown and Notes](#markdown-and-notes)
- [Utilities](#utilities)

---

## Core Functionality

### lazy.nvim

**Repository:** folke/lazy.nvim
**Purpose:** Plugin manager
**Config:** Auto-bootstrapped in `init.lua`

Modern plugin manager with lazy loading, lockfile support, and UI for managing plugins.

### treesitter

**Repository:** nvim-treesitter/nvim-treesitter
**Purpose:** Syntax parsing and highlighting
**Config:** `lua/plugins/treesitter.lua`
**Docs:** [plugin-docs/treesitter.md](../plugin-docs/treesitter.md)

Advanced syntax highlighting and code understanding using tree-sitter parsers.

**Installed Languages:** bash, c, diff, editorconfig, gitignore, html, javascript, jsdoc, lua, luadoc, markdown, markdown_inline, query, tsx, typescript, vim, vimdoc

### treesitter-context

**Repository:** nvim-treesitter/nvim-treesitter-context
**Purpose:** Show code context at top of window
**Config:** `lua/plugins/treesitter-context.lua`
**Docs:** [plugin-docs/treesitter-context.md](../plugin-docs/treesitter-context.md)

Displays the current function/class context at the top of the window.

### treesitter-textobjects

**Repository:** nvim-treesitter/nvim-treesitter-textobjects
**Purpose:** Smart text objects based on syntax
**Config:** `lua/plugins/treesitter-textobjects.lua`
**Docs:** [plugin-docs/treesitter-textobjects.md](../plugin-docs/treesitter-textobjects.md)

Text objects for functions (`af`/`if`), classes (`ac`/`ic`), and scopes (`as`).

### which-key

**Repository:** folke/which-key.nvim
**Purpose:** Keymap help and documentation
**Config:** `lua/plugins/which-key.lua`
**Docs:** [plugin-docs/which-key.md](../plugin-docs/which-key.md)

Shows available keybindings in a popup as you type.

### snacks

**Repository:** folke/snacks.nvim
**Purpose:** Collection of useful utilities
**Config:** `lua/plugins/snacks.lua`
**Docs:** [plugin-docs/snacks.md](../plugin-docs/snacks.md)

Includes bigfile detection, indent guides, input enhancements, notifications, and more.

---

## Navigation and Finding

### fzf-lua

**Repository:** ibhagwan/fzf-lua
**Purpose:** Fuzzy finder
**Config:** `lua/plugins/fzf-lua.lua`
**Docs:** [plugin-docs/fzf-lua.md](../plugin-docs/fzf-lua.md)
**Main Keymap:** `<leader><leader>` (files)

Fast fuzzy finding for files, buffers, grep, and more.

### flash

**Repository:** folke/flash.nvim
**Purpose:** Enhanced motion and search
**Config:** `lua/plugins/flash.lua`
**Docs:** [plugin-docs/flash.md](../plugin-docs/flash.md)
**Main Keymap:** `s` (flash jump)

Lightning-fast navigation to any visible location.

### harpoon

**Repository:** ThePrimeagen/harpoon (branch: harpoon2)
**Purpose:** File bookmarking
**Config:** `lua/plugins/harpoon.lua`
**Docs:** [plugin-docs/harpoon.md](../plugin-docs/harpoon.md)
**Main Keymap:** `<leader>ra` (add), `<leader>rm` (menu)

Quick navigation between frequently used files.

### zoxide

**Repository:** nanotee/zoxide.vim
**Purpose:** Smart directory jumping
**Config:** `lua/plugins/zoxide.lua`
**Docs:** [plugin-docs/zoxide.md](../plugin-docs/zoxide.md)
**Main Keymap:** `<leader>.` (interactive)

Jump to frequently used directories with fuzzy matching.

### tmux-navigator

**Repository:** christoomey/vim-tmux-navigator
**Purpose:** Seamless tmux/vim navigation
**Config:** `lua/plugins/tmux-navigator.lua`
**Docs:** [plugin-docs/tmux-navigator.md](../plugin-docs/tmux-navigator.md)
**Main Keymaps:** `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>`

Navigate between vim splits and tmux panes with the same keybindings.

### project

**Repository:** ahmedkhalf/project.nvim
**Purpose:** Project management
**Config:** `lua/plugins/project.lua`
**Docs:** [plugin-docs/project.md](../plugin-docs/project.md)
**Main Keymap:** `<leader>fp` (projects)

Manage and switch between projects.

---

## File Management

### neo-tree

**Repository:** nvim-neo-tree/neo-tree.nvim (v3.x)
**Purpose:** File explorer
**Config:** `lua/plugins/neo-tree.lua`
**Docs:** [plugin-docs/neo-tree.md](../plugin-docs/neo-tree.md)
**Main Keymap:** `\` (toggle)

Full-featured file tree explorer with git integration.

### oil

**Repository:** stevearc/oil.nvim
**Purpose:** File browser as a buffer
**Config:** `lua/plugins/oil.lua`
**Docs:** [plugin-docs/oil.md](../plugin-docs/oil.md)
**Main Keymap:** `-` (open)

Edit your filesystem like a normal buffer.

### yazi

**Repository:** mikavilpas/yazi.nvim
**Purpose:** Yazi file manager integration
**Config:** `lua/plugins/yazi.lua`
**Docs:** [plugin-docs/yazi.md](../plugin-docs/yazi.md)
**Main Keymap:** `<leader>-` (open)

Integration with the yazi terminal file manager.

---

## Code Editing

### autopairs

**Repository:** windwp/nvim-autopairs
**Purpose:** Auto-close brackets and quotes
**Config:** `lua/plugins/autopairs.lua`
**Docs:** [plugin-docs/autopairs.md](../plugin-docs/autopairs.md)

Automatically insert closing brackets, quotes, and more.

### mini

**Repository:** echasnovski/mini.nvim
**Purpose:** Collection of minimal plugins
**Config:** `lua/plugins/mini.lua`
**Docs:** [plugin-docs/mini.md](../plugin-docs/mini.md)
**Features:** ai (text objects), surround, statusline, icons

- **mini.ai:** Extended text objects
- **mini.surround:** Add/delete/replace surroundings (`gsa`, `gsd`, `gsr`)
- **mini.statusline:** Minimal statusline
- **mini.icons:** Icon support

### conform

**Repository:** stevearc/conform.nvim
**Purpose:** Code formatting
**Config:** `lua/plugins/conform.lua`
**Docs:** [plugin-docs/conform.md](../plugin-docs/conform.md)
**Main Keymap:** `<leader>cf` (format)

Unified interface for code formatters with auto-format on save.

**Formatters:** stylua, black, isort, rustfmt, prettier, biome, shfmt, terraform_fmt, yamlfmt

### lint

**Repository:** mfussenegger/nvim-lint
**Purpose:** Asynchronous linting
**Config:** `lua/plugins/lint.lua`
**Docs:** [plugin-docs/lint.md](../plugin-docs/lint.md)

Asynchronous linting for various file types.

**Linters:** markdownlint, ruff, tflint, shellcheck, hadolint, biomejs

### comment (via mini.comment)

Commenting handled by mini.nvim.

### sleuth

**Repository:** tpope/vim-sleuth
**Purpose:** Auto-detect indentation
**Config:** `lua/plugins/sleuth.lua`
**Docs:** [plugin-docs/sleuth.md](../plugin-docs/sleuth.md)

Automatically detects indentation settings from files.

### todo-comments

**Repository:** folke/todo-comments.nvim
**Purpose:** Highlight TODO comments
**Config:** `lua/plugins/todo-comments.lua`
**Docs:** [plugin-docs/todo-comments.md](../plugin-docs/todo-comments.md)

Highlights and searches TODO, FIXME, NOTE, etc. in comments.

### undotree

**Repository:** mbbill/undotree
**Purpose:** Undo history visualization
**Config:** `lua/plugins/undotree.lua`
**Docs:** [plugin-docs/undotree.md](../plugin-docs/undotree.md)
**Main Keymap:** `<leader>u` (toggle)

Visualize and navigate undo history as a tree.

---

## LSP and Language Support

### lspconfig

**Repository:** neovim/nvim-lspconfig
**Purpose:** LSP configuration
**Config:** `lua/plugins/lspconfig.lua`
**Docs:** [plugin-docs/lspconfig.md](../plugin-docs/lspconfig.md)

Quickstart configs for language servers.

**LSP Servers:** ts_ls (TypeScript), pyright (Python), bashls, marksman (Markdown), terraformls, ansiblels, lua_ls

### mason

**Repository:** williamboman/mason.nvim
**Purpose:** LSP/DAP/Linter installer
**Config:** Integrated in `lspconfig.lua`

Portable package manager for LSP servers, DAP servers, linters, and formatters.

### mason-lspconfig

**Repository:** williamboman/mason-lspconfig.nvim
**Purpose:** Bridge mason and lspconfig
**Config:** Integrated in `lspconfig.lua`

Ensures LSP servers are installed via mason.

### lazydev

**Repository:** folke/lazydev.nvim
**Purpose:** Neovim Lua development
**Config:** Integrated in `lspconfig.lua`

Better Lua LSP setup for Neovim config development.

### fidget

**Repository:** j-hui/fidget.nvim
**Purpose:** LSP progress notifications
**Config:** Integrated in `lspconfig.lua`

Shows LSP progress in the corner.

### rustacean

**Repository:** mrcjkb/rustaceanvim (v6+)
**Purpose:** Enhanced Rust support
**Config:** `lua/plugins/rustacean.lua`
**Docs:** [plugin-docs/rustacean.md](../plugin-docs/rustacean.md)

Rust language tools and LSP enhancements.

### trouble

**Repository:** folke/trouble.nvim
**Purpose:** Diagnostics list
**Config:** `lua/plugins/trouble.lua`
**Docs:** [plugin-docs/trouble.md](../plugin-docs/trouble.md)
**Main Keymap:** `<leader>xx` (toggle)

Better diagnostics, references, and quickfix list.

---

## Completion

### blink-cmp

**Repository:** saghen/blink.cmp (v1.\*)
**Purpose:** Completion engine
**Config:** `lua/plugins/blink-cmp.lua`
**Docs:** [plugin-docs/blink-cmp.md](../plugin-docs/blink-cmp.md)
**Main Keymaps:** `<Tab>`, `<M-CR>`, `<M-j>`, `<M-k>`

Fast completion engine with LSP, snippets, and path completion.

**Sources:** LSP, path, snippets, lazydev, copilot

### luasnip

**Repository:** L3MON4D3/LuaSnip
**Purpose:** Snippet engine
**Config:** Integrated in `blink-cmp.lua`

Snippet engine for completion.

### friendly-snippets

**Repository:** rafamadriz/friendly-snippets
**Purpose:** Snippet collection
**Config:** Integrated in `blink-cmp.lua`

Collection of snippets for various languages.

---

## Git Integration

### gitsigns

**Repository:** lewis6991/gitsigns.nvim
**Purpose:** Git change indicators
**Config:** `lua/plugins/gitsigns.lua`
**Docs:** [plugin-docs/gitsigns.md](../plugin-docs/gitsigns.md)
**Main Keymaps:** `]c`, `[c`, `<leader>h*`

Shows git changes in sign column with hunk operations.

### fugitive

**Repository:** tpope/vim-fugitive
**Purpose:** Git interface
**Config:** `lua/plugins/fugitive.lua`
**Docs:** [plugin-docs/fugitive.md](../plugin-docs/fugitive.md)
**Main Keymap:** `<leader>gs` (status)

Comprehensive git commands integration.

### lazygit

**Repository:** kdheepak/lazygit.nvim
**Purpose:** LazyGit integration
**Config:** `lua/plugins/lazygit.lua`
**Docs:** [plugin-docs/lazygit.md](../plugin-docs/lazygit.md)
**Main Keymap:** `<leader>gl`

Terminal UI for git operations.

---

## Debugging and Testing

### nvim-dap

**Repository:** mfussenegger/nvim-dap
**Purpose:** Debug Adapter Protocol
**Config:** `lua/plugins/debug.lua`
**Docs:** [plugin-docs/debug.md](../plugin-docs/debug.md)
**Main Keymaps:** `<leader>d*`

Debug adapter protocol client for debugging.

**Adapters:** delve (Go), codelldb (Rust), js-debug-adapter (JS/TS), debugpy (Python)

### nvim-dap-ui

**Repository:** rcarriga/nvim-dap-ui
**Purpose:** UI for nvim-dap
**Config:** Integrated in `debug.lua`

Provides a nice UI for debugging.

### nvim-dap-virtual-text

**Repository:** theHamsta/nvim-dap-virtual-text
**Purpose:** Virtual text for DAP
**Config:** Integrated in `debug.lua`

Shows variable values as virtual text during debugging.

### mason-nvim-dap

**Repository:** jay-babu/mason-nvim-dap.nvim
**Purpose:** Auto-install DAP adapters
**Config:** Integrated in `debug.lua`

Automatically installs debug adapters via mason.

### neotest

**Repository:** nvim-neotest/neotest
**Purpose:** Test runner
**Config:** `lua/plugins/neotest.lua`
**Docs:** [plugin-docs/neotest.md](../plugin-docs/neotest.md)
**Main Keymaps:** `<leader>t*`

Framework for running and viewing test results.

**Adapters:** neotest-python

---

## AI and Copilot

### copilot

**Repository:** zbirenbaum/copilot.lua
**Purpose:** GitHub Copilot
**Config:** `lua/plugins/copilot.lua`
**Docs:** [plugin-docs/copilot.md](../plugin-docs/copilot.md)

GitHub Copilot integration (completions via blink-cmp).

### copilot-cmp

**Repository:** zbirenbaum/copilot-cmp
**Purpose:** Copilot completion source
**Config:** Integrated in `copilot.lua`

Copilot source for completion engines.

### sidekick

**Repository:** folke/sidekick.nvim
**Purpose:** Claude AI integration
**Config:** `lua/plugins/sidekick.lua`
**Docs:** [plugin-docs/sidekick.md](../plugin-docs/sidekick.md)
**Main Keymaps:** `<C-space>`, `<leader>a*`

Integration with Claude AI assistant for code help.

---

## UI Enhancements

### tokyonight

**Repository:** folke/tokyonight.nvim
**Purpose:** Colorscheme
**Config:** `lua/plugins/colorscheme.lua`
**Docs:** [plugin-docs/colorscheme.md](../plugin-docs/colorscheme.md)
**Status:** Active (tokyonight-night variant)

Modern colorscheme with multiple variants. Currently using the tokyonight-night variant.

### dressing

**Repository:** stevearc/dressing.nvim
**Purpose:** UI improvements
**Config:** `lua/plugins/dressing.lua`
**Docs:** [plugin-docs/dressing.md](../plugin-docs/dressing.md)

Better UI for `vim.ui.select` and `vim.ui.input`.

### noice

**Repository:** folke/noice.nvim
**Purpose:** Enhanced UI/messages
**Config:** `lua/plugins/noice.lua`
**Docs:** [plugin-docs/noice.md](../plugin-docs/noice.md)
**Main Keymaps:** `<leader>n*`

Replaces command line, messages, and popupmenu with modern UI.

**Dependencies:** nui.nvim, nvim-notify

### nui.nvim

**Repository:** MunifTanjim/nui.nvim
**Purpose:** UI component library
**Config:** Dependency

Used by noice and neo-tree for UI components.

### nvim-notify

**Repository:** rcarriga/nvim-notify
**Purpose:** Notification manager
**Config:** Dependency

Better notifications for Neovim.

---

## Markdown and Notes

### markdown-preview

**Repository:** iamcco/markdown-preview.nvim
**Purpose:** Live markdown preview
**Config:** `lua/plugins/markdown-preview.lua`
**Docs:** [plugin-docs/markdown-preview.md](../plugin-docs/markdown-preview.md)
**Command:** `:MarkdownPreview`
**Status:** DISABLED

Preview markdown files in browser. Currently disabled (enabled = false).

### render-markdown

**Repository:** MeanderingProgrammer/render-markdown.nvim
**Purpose:** Render markdown in buffer
**Config:** `lua/plugins/render-markdown.lua`
**Docs:** [plugin-docs/render-markdown.md](../plugin-docs/render-markdown.md)

Renders markdown with nice formatting in the buffer.

### obsidian

**Repository:** obsidian-nvim/obsidian.nvim
**Purpose:** Obsidian integration
**Config:** `lua/plugins/obsidian.lua`
**Docs:** [plugin-docs/obsidian.md](../plugin-docs/obsidian.md)
**Main Keymaps:** `<leader>o*`
**Status:** DISABLED

Full Obsidian vault integration for note-taking. Currently disabled (enabled = false).

**Workspace:** ~/terminus

---

## Utilities

### plenary

**Repository:** nvim-lua/plenary.nvim
**Purpose:** Lua utility library
**Config:** Dependency

Common Lua functions used by many plugins.

### nvim-web-devicons / mini.icons

**Purpose:** File icons
**Config:** Using mini.icons

Provides file type icons.

---

## Plugin Management

### View Installed Plugins

- `:Lazy` - Open lazy.nvim UI
- `:Lazy update` - Update all plugins
- `:Lazy sync` - Sync plugins with lockfile
- `:Lazy clean` - Remove unused plugins
- `:Lazy check` - Check for updates

### Lockfile

Plugin versions are locked in `lazy-lock.json` for reproducibility.

---

## Plugin Count

**Total Plugins:** 39+ (including dependencies)

---

## Adding New Plugins

To add a new plugin:

1. Create a file in `lua/plugins/` (e.g., `lua/plugins/myplugin.lua`)
2. Return a table with plugin spec:

```lua
return {
  "author/plugin-name",
  event = "VeryLazy",  -- or other lazy-loading event
  config = function()
    require("plugin-name").setup({
      -- configuration
    })
  end,
}
```

3. Restart Neovim or run `:Lazy sync`

For more details, see individual plugin documentation in the `plugin-docs/` directory.
