return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  dependencies = {
    "folke/snacks.nvim",
  },
  keys = {
    {
      "<leader>-",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "file",
    },
    {
      "<leader>_",
      "<cmd>Yazi cwd<cr>",
      desc = "cwd",
    },
  },
  opts = {},
}
