return {
  "tpope/vim-fugitive",
  cmd = {
    "G",
    "Git",
    "Gdiffsplit",
    "Gvdiffsplit",
    "Gread",
    "Gwrite",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
  },
  keys = {
    { "<leader>gs", "<cmd>Git<cr>", desc = "status" },
    { "<leader>gb", "<cmd>Git blame<cr>", desc = "blame" },
    { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "diff" },
  },
}
