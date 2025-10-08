return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  cmd = "FzfLua",
  keys = {
    { "<leader><leader>", "<cmd>FzfLua files<cr>", desc = "files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "grep" },
    {
      "<leader>fn",
      function()
        require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
      end,
      desc = "neovim config",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files({ cwd = "~/.config" })
      end,
      desc = "config files",
    },
    {
      "<leader>fp",
      function()
        require("fzf-lua").files({ cwd = "~/.local/share/nvim/lazy" })
      end,
      desc = "plugins",
    },
    { "<leader>fh", "<cmd>FzfLua helptags<cr>", desc = "help" },
    { "<leader>fk", "<cmd>FzfLua keymaps<cr>", desc = "keymaps" },
    { "<leader>fm", "<cmd>FzfLua marks<cr>", desc = "marks" },
    { "<leader>fz", "<cmd>FzfLua builtin<cr>", desc = "fzf builtin" },
    { "<leader>fw", "<cmd>FzfLua grep_cword<cr>", desc = "word" },
    { "<leader>fW", "<cmd>FzfLua grep_cWORD<cr>", desc = "WORD" },
    { "<leader>fd", "<cmd>FzfLua diagnostics_document<cr>", desc = "diagnostics" },
    { "<leader>fr", "<cmd>FzfLua resume<cr>", desc = "resume" },
    { "<leader>fo", "<cmd>FzfLua oldfiles<cr>", desc = "old files" },
    { "<leader>,", "<cmd>FzfLua buffers<cr>", desc = "buffers" },
    { "<leader>/", "<cmd>FzfLua lgrep_curbuf<cr>", desc = "grep buffer" },
  },
  opts = {},
}
