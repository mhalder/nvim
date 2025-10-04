return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  keys = {
    { "<leader>zi", "<cmd>IBLToggle<cr>", desc = "indent" },
  },
  opts = {
    enabled = false,
    indent = {
      char = "▏",
    },
  },
}
