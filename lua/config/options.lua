local opt = vim.opt

vim.env.PATH = vim.fn.expand("~/.config/nvm/versions/node/v22.20.0/bin") .. ":" .. vim.env.PATH

vim.deprecate = function() end

opt.conceallevel = 2
opt.fillchars:append({ diff = " " })

opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.showmode = false

vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)

opt.breakindent = true
opt.undofile = true

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"

opt.updatetime = 250
opt.timeoutlen = 300

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.inccommand = "split"
opt.cursorline = true
opt.scrolloff = 10
opt.confirm = true
