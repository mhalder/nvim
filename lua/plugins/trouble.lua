return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  opts = {
    modes = {
      lsp = {
        win = { position = "right" },
      },
    },
  },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "diagnostics" },
    { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "buffer diagnostics" },
    { "<leader>cs", "<cmd>Trouble symbols toggle<cr>", desc = "symbols" },
    { "<leader>cS", "<cmd>Trouble lsp toggle<cr>", desc = "lsp" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "location" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "quickfix" },
    {
      "[q",
      function()
        if require("trouble").is_open() then
          require("trouble").prev({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cprev)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "previous trouble/quickfix",
    },
    {
      "]q",
      function()
        if require("trouble").is_open() then
          require("trouble").next({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cnext)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "next trouble/quickfix",
    },
  },
}
