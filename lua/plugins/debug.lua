return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "williamboman/mason.nvim",
    "jay-babu/mason-nvim-dap.nvim",
    "leoluz/nvim-dap-go",
    "mfussenegger/nvim-dap-python",
  },
  keys = {
    {
      "<leader>dc",
      function()
        require("dap").continue()
      end,
      desc = "continue",
    },
    {
      "<leader>di",
      function()
        require("dap").step_into()
      end,
      desc = "step into",
    },
    {
      "<leader>do",
      function()
        require("dap").step_over()
      end,
      desc = "step over",
    },
    {
      "<leader>du",
      function()
        require("dap").step_out()
      end,
      desc = "step out",
    },
    {
      "<leader>db",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "breakpoint",
    },
    {
      "<leader>dt",
      function()
        require("dap").terminate()
      end,
      desc = "terminate",
    },
    {
      "<leader>dr",
      function()
        require("dapui").toggle()
      end,
      desc = "last result",
    },
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("mason-nvim-dap").setup({
      automatic_installation = true,
      handlers = {
        python = function() end,
      },
      ensure_installed = {
        "delve",
        "codelldb",
        "js-debug-adapter",
      },
    })

    dapui.setup({})

    dap.listeners.after.event_initialized["dapui_config"] = dapui.open
    dap.listeners.before.event_terminated["dapui_config"] = dapui.close
    dap.listeners.before.event_exited["dapui_config"] = dapui.close

    require("dap-go").setup({
      delve = {},
    })

    local python_path = vim.env.VIRTUAL_ENV and (vim.env.VIRTUAL_ENV .. "/bin/python") or "python"
    require("dap-python").setup(python_path)
    local dap_python = require("dap")

    dap_python.configurations.python = {
      {
        type = "python",
        request = "launch",
        name = "File",
        program = "${file}",
        stopOnEntry = true,
      },
      {
        type = "python",
        request = "launch",
        name = "File with args",
        program = "${file}",
        args = function()
          local args_string = vim.fn.input("args: ")
          return vim.split(args_string, " ")
        end,
      },
      {
        type = "python",
        request = "launch",
        name = "Module",
        module = function()
          return vim.fn.input("module: ")
        end,
        console = "integratedTerminal",
      },
      {
        type = "python",
        request = "launch",
        name = "Module with args",
        module = function()
          return vim.fn.input("module: ")
        end,
        args = function()
          local args_string = vim.fn.input("args: ")
          return vim.split(args_string, " ")
        end,
        console = "integratedTerminal",
      },
    }

    dap.adapters.codelldb = {
      type = "server",
      port = "${port}",
      executable = {
        command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
        args = { "--port", "${port}" },
      },
    }

    local get_rust_executable = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end

    local get_args = function()
      return vim.split(vim.fn.input("Arguments: "), " ")
    end

    dap.configurations.rust = {
      {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = get_rust_executable,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
      },
      {
        name = "Launch with args",
        type = "codelldb",
        request = "launch",
        program = get_rust_executable,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = get_args,
      },
      {
        name = "Attach to process",
        type = "codelldb",
        request = "attach",
        pid = require("dap.utils").pick_process,
        args = {},
      },
      {
        name = "Launch test",
        type = "codelldb",
        request = "launch",
        program = function()
          local result = vim.fn.system("cargo test --no-run --message-format=json")
          for _, line in ipairs(vim.split(result, "\n")) do
            if line ~= "" then
              local ok, json = pcall(vim.json.decode, line)
              if ok and json.executable then
                return json.executable
              end
            end
          end
          return vim.fn.input("Path to test executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
      },
    }

    dap.adapters["pwa-node"] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        args = {
          vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
          "${port}",
        },
      },
    }

    dap.configurations.typescript = {
      {
        name = "Debug Compiled JavaScript",
        type = "pwa-node",
        request = "launch",
        program = "${workspaceFolder}/dist/${fileBasenameNoExtension}.js",
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        skipFiles = { "<node_internals>/**", "node_modules/**" },
        console = "integratedTerminal",
        preLaunchTask = "npm: build",
        outFiles = { "${workspaceFolder}/dist/**/*.js" },
      },
      {
        name = "Debug TypeScript (tsx)",
        type = "pwa-node",
        request = "launch",
        program = "${file}",
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        resolveSourceMapLocations = { "${workspaceFolder}/**", "!**/node_modules/**" },
        runtimeExecutable = "tsx",
        runtimeArgs = { "--enable-source-maps" },
        env = {
          NODE_OPTIONS = "--enable-source-maps",
        },
        skipFiles = { "<node_internals>/**", "node_modules/**" },
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
        stopOnEntry = false,
        outFiles = { "${workspaceFolder}/**/*.js" },
        smartStep = true,
        trace = true,
      },
      {
        name = "Debug TypeScript (ts-node)",
        type = "pwa-node",
        request = "launch",
        program = "${file}",
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        resolveSourceMapLocations = { "${workspaceFolder}/**", "!**/node_modules/**" },
        runtimeExecutable = "ts-node",
        skipFiles = { "<node_internals>/**", "node_modules/**" },
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
        stopOnEntry = false,
      },
      {
        name = "Debug JavaScript",
        type = "pwa-node",
        request = "launch",
        program = "${file}",
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        skipFiles = { "<node_internals>/**", "node_modules/**" },
        console = "integratedTerminal",
      },
      {
        name = "Attach to Node Process",
        type = "pwa-node",
        request = "attach",
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
        sourceMaps = true,
        skipFiles = { "<node_internals>/**", "node_modules/**" },
      },
    }

    dap.configurations.javascript = dap.configurations.typescript
  end,
}
