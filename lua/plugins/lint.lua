return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters.biome = {
      cmd = "biome",
      stdin = true,
      args = {
        "lint",
        "--stdin-file-path",
        function()
          return vim.api.nvim_buf_get_name(0)
        end,
        "--reporter=json",
      },
      stream = "stdout",
      ignore_exitcode = true,
      parser = function(output)
        if output == "" then
          return {}
        end

        local ok, decoded = pcall(vim.json.decode, output)
        if not ok then
          return {}
        end

        local diagnostics = {}
        if decoded.diagnostics then
          for _, diagnostic in ipairs(decoded.diagnostics) do
            local severity = vim.diagnostic.severity.WARN
            if diagnostic.severity == "error" then
              severity = vim.diagnostic.severity.ERROR
            elseif diagnostic.severity == "info" then
              severity = vim.diagnostic.severity.INFO
            end

            table.insert(diagnostics, {
              lnum = (diagnostic.location and diagnostic.location.span and diagnostic.location.span[1] or 1) - 1,
              col = (diagnostic.location and diagnostic.location.span and diagnostic.location.span[2] or 0),
              end_lnum = (diagnostic.location and diagnostic.location.span and diagnostic.location.span[3] or 1) - 1,
              end_col = (diagnostic.location and diagnostic.location.span and diagnostic.location.span[4] or 0),
              severity = severity,
              message = diagnostic.description or diagnostic.message or "Biome diagnostic",
              source = "biome",
            })
          end
        end

        return diagnostics
      end,
    }

    lint.linters_by_ft = {
      markdown = { "markdownlint" },
      python = { "ruff" },
      terraform = { "tflint" },
      bash = { "shellcheck" },
      dockerfile = { "hadolint" },
      javascript = { "biome" },
      javascriptreact = { "biome" },
      typescript = { "biome" },
      typescriptreact = { "biome" },
      json = { "biome" },
      jsonc = { "biome" },
    }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        if vim.bo.modifiable then
          lint.try_lint()
        end
      end,
    })
  end,
}
