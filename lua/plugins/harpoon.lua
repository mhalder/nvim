return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ra",
      function()
        require("harpoon"):list():add()
      end,
      desc = "add file",
    },
    {
      "<leader>rr",
      function()
        require("harpoon"):list():remove()
      end,
      desc = "remove file",
    },
    {
      "<leader>rm",
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
      desc = "open menu",
    },
  },
}
