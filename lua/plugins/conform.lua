return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "format",
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end
      if vim.tbl_contains({ "c", "cpp" }, vim.bo[bufnr].filetype) then
        return
      end
      return { timeout_ms = 5000, lsp_format = "fallback" }
    end,
    formatters = {
      terragrunt_fmt = { command = "terragrunt", args = { "hcl", "format" }, stdin = false },
      biome = {
        command = "biome",
        args = {
          "check",
          "--write",
          "--unsafe",
          "--stdin-file-path",
          "$FILENAME",
        },
        stdin = true,
      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      json = { "prettierd", "prettier", stop_after_first = true },
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      bash = { "shfmt" },
      sh = { "shfmt" },
      zsh = { "shfmt" },
      markdown = { "prettierd", "prettier", "trim_whitespace" },
      terraform = { "terraform_fmt" },
      hcl = { "terragrunt_fmt" },
      ["yaml.ansible"] = { "ansible-lint" },
      yaml = { "yamlfmt" },
    },
  },
  init = function()
    vim.api.nvim_create_user_command("FormatDisable", function(args)
      if args.bang then
        vim.b.disable_autoformat = true
      else
        vim.g.disable_autoformat = true
      end
    end, {
      desc = "disable autoformat on save",
      bang = true,
    })

    vim.api.nvim_create_user_command("FormatEnable", function()
      vim.b.disable_autoformat = false
      vim.g.disable_autoformat = false
    end, {
      desc = "enable autoformat on save",
    })

    vim.api.nvim_create_user_command("FormatToggle", function(args)
      if args.bang then
        vim.b.disable_autoformat = not vim.b.disable_autoformat
      else
        vim.g.disable_autoformat = not vim.g.disable_autoformat
      end
    end, {
      desc = "toggle autoformat on save",
      bang = true,
    })

    vim.keymap.set("n", "<leader>zf", "<cmd>FormatToggle<cr>", { desc = "formatting" })
  end,
}
