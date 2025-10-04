return {
  "saghen/blink.cmp",
  event = "InsertEnter",
  version = "1.*",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      version = "2.*",
      build = (function()
        if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
          return
        end
        return "make install_jsregexp"
      end)(),
    },
    "folke/lazydev.nvim",
    "saghen/blink.compat",
  },
  opts = {
    keymap = {
      preset = "default",
      ["<C-f>"] = { "scroll_documentation_down" },
      ["<C-b>"] = { "scroll_documentation_up" },
      ["<M-CR>"] = { "accept", "fallback" },
      ["<Tab>"] = {
        "snippet_forward",
        function()
          return require("sidekick").nes_jump_or_apply()
        end,
        "fallback",
      },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      ghost_text = {
        enabled = true,
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
      },
    },

    sources = {
      default = { "lsp", "path", "snippets", "lazydev", "copilot" },
      providers = {
        lazydev = {
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
        copilot = {
          name = "copilot",
          module = "blink.compat.source",
          score_offset = 100,
          async = true,
        },
      },
    },

    snippets = {
      preset = "luasnip",
    },

    fuzzy = {
      implementation = "lua",
    },

    signature = {
      enabled = true,
    },
  },
}
