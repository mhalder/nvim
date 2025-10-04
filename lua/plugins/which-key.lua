return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    delay = 0,
    icons = {
      mappings = true,
    },
    spec = {
      { "<leader>a", group = "ai" },
      { "<leader>c", group = "code" },
      { "<leader>d", group = "debug" },
      { "<leader>f", group = "find" },
      { "<leader>g", group = "git" },
      { "<leader>h", group = "hunk", mode = { "n", "v" } },
      { "<leader>j", group = "exit" },
      { "<leader>l", group = "lua", mode = { "n", "v" } },
      { "<leader>o", group = "obsidian" },
      { "<leader>r", group = "harpoon" },
      { "<leader>x", group = "diagnostics" },
      { "<leader>y", group = "terminal" },
      { "<leader>z", group = "toggle" },
      { "gr", group = "lsp" },
      { "gs", group = "surround" },
    },
  },
}
