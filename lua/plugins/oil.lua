return {
  "stevearc/oil.nvim",
  lazy = false,
  dependencies = { "echasnovski/mini.icons" },
  keys = {
    { "-", "<cmd>Oil --float<cr>", desc = "oil" },
  },
  opts = {
    view_options = {
      show_hidden = true,
    },
    skip_confirm_for_simple_edits = true,
  },
}
