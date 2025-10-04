return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "~" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
    },
    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")

      local function map(mode, l, r, opts)
        opts = opts or {}
        opts.buffer = bufnr
        vim.keymap.set(mode, l, r, opts)
      end

      map("n", "]c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "]c", bang = true })
        else
          gitsigns.nav_hunk("next")
        end
      end, { desc = "next git change" })

      map("n", "[c", function()
        if vim.wo.diff then
          vim.cmd.normal({ "[c", bang = true })
        else
          gitsigns.nav_hunk("prev")
        end
      end, { desc = "previous git change" })

      map("v", "<leader>hs", function()
        gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, { desc = "stage hunk" })
      map("v", "<leader>hr", function()
        gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
      end, { desc = "reset hunk" })

      map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "stage hunk" })
      map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "reset hunk" })
      map("n", "<leader>ht", gitsigns.stage_buffer, { desc = "stage buffer" })
      map("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "undo stage hunk" })
      map("n", "<leader>he", gitsigns.reset_buffer, { desc = "reset buffer" })
      map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "preview hunk" })
      map("n", "<leader>hb", gitsigns.blame_line, { desc = "blame line" })
      map("n", "<leader>hd", gitsigns.diffthis, { desc = "diff against index" })
      map("n", "<leader>hi", function()
        gitsigns.diffthis("@")
      end, { desc = "diff against last commit" })

      map("n", "<leader>zb", gitsigns.toggle_current_line_blame, { desc = "blame" })
      map("n", "<leader>ze", gitsigns.preview_hunk_inline, { desc = "deleted" })
    end,
  },
}
