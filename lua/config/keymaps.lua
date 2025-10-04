local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "exit terminal mode" })

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

map("n", "<C-u>", "<C-u>zz", { desc = "scroll up centered" })
map("n", "<C-d>", "<C-d>zz", { desc = "scroll down centered" })

map("v", "<", "<gv", { desc = "indent left" })
map("v", ">", ">gv", { desc = "indent right" })

map("n", "<leader>jj", "<cmd>q<cr>", { desc = "quit" })
map("n", "<leader>jk", "<cmd>w<cr>", { desc = "save" })
map("n", "<leader>jl", "<cmd>wq<cr>", { desc = "save and quit" })
map("n", "<leader>j;", "<cmd>qa!<cr>", { desc = "quit all (no save)" })

map("n", "<leader>lp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "copy filepath" })

map("n", "<leader>lf", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
end, { desc = "copy filename" })

map("n", "<leader>ls", "<cmd>source %<cr>", { desc = "source file" })
map("n", "<leader>le", ":.lua<cr>", { desc = "eval line" })
map("n", "<leader>lv", ":.lua =vim.", { desc = "print value" })
map("v", "<leader>le", ":lua<cr>", { desc = "eval selection" })

map("n", "<leader>xf", vim.diagnostic.open_float, { desc = "diagnostic float" })

map("n", "<leader>yt", "<cmd>split | terminal<cr>", { desc = "split" })
map("n", "<leader>yv", "<cmd>vsplit | terminal<cr>", { desc = "vsplit" })
map("n", "<leader>yf", "<cmd>terminal<cr>", { desc = "fullscreen" })

vim.g.toggle_diagnostics = true
map("n", "<leader>zd", function()
  vim.g.toggle_diagnostics = not vim.g.toggle_diagnostics
  if vim.g.toggle_diagnostics then
    vim.diagnostic.enable()
  else
    vim.diagnostic.hide()
  end
end, { desc = "diagnostics" })
