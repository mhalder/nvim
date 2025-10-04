return {
  "folke/sidekick.nvim",
  keys = {
    {
      "<tab>",
      function()
        return require("sidekick").nes_jump_or_apply()
      end,
      mode = "n",
      desc = "jump/apply next edit",
    },
    {
      "<leader>aa",
      function()
        require("sidekick.cli").toggle()
      end,
      mode = { "n", "v" },
      desc = "toggle cli",
    },
    {
      "<leader>as",
      function()
        require("sidekick.cli").select({ filter = { installed = true } })
      end,
      desc = "select cli",
    },
    {
      "<leader>as",
      function()
        require("sidekick.cli").send({ selection = true })
      end,
      mode = { "v" },
      desc = "send visual selection",
    },
    {
      "<leader>ap",
      function()
        require("sidekick.cli").prompt()
      end,
      mode = { "n", "v" },
      desc = "select prompt",
    },
    {
      "<c-.>",
      function()
        require("sidekick.cli").focus()
      end,
      mode = { "n", "x", "i", "t" },
      desc = "switch focus",
    },
    {
      "<leader>ac",
      function()
        require("sidekick.cli").toggle({ name = "claude", focus = true })
      end,
      desc = "claude toggle",
      mode = { "n", "v" },
    },
    {
      "<leader>ai",
      function()
        require("sidekick.cli").toggle({ name = "aider", focus = true })
      end,
      desc = "aider toggle",
      mode = { "n", "v" },
    },
  },
  opts = {
    cli = {
      mux = {
        backend = "tmux",
        enabled = true,
      },
    },
  },
}
