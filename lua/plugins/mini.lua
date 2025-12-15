return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })

    require("mini.surround").setup({
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    })

    require("mini.bufremove").setup()
    vim.keymap.set("n", "<leader>bd", function()
      require("mini.bufremove").delete(0, false)
    end, { desc = "delete buffer" })

    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = vim.g.have_nerd_font })

    statusline.section_location = function()
      return "%2l:%-2v"
    end
  end,
}
