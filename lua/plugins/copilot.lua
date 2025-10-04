return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  dependencies = {
    "zbirenbaum/copilot-cmp",
  },
  config = function()
    require("copilot").setup({
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = false,
      },
      filetypes = {
        yaml = true,
        markdown = true,
        help = false,
        gitcommit = true,
        gitrebase = false,
        ["."] = false,
        ["*"] = true,
      },
      copilot_node_command = "node",
      server_opts_overrides = {
        settings = {
          advanced = {
            listCount = 10,
            inlineSuggestCount = 3,
          },
        },
      },
    })

    require("copilot_cmp").setup()
  end,
}
