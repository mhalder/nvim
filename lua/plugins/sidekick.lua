return {
  "folke/sidekick.nvim",
  keys = {
    {
      "<tab>",
      function()
        if not require("sidekick").nes_jump_or_apply() then
          return "<Tab>"
        end
      end,
      expr = true,
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
      mode = "n",
      desc = "select cli",
    },
    {
      "<leader>av",
      function()
        require("sidekick.cli").send({ msg = "{selection}" })
      end,
      mode = { "x" },
      desc = "send visual selection",
    },
    {
      "<leader>at",
      function()
        require("sidekick.cli").send({ msg = "{this}" })
      end,
      mode = { "x", "n" },
      desc = "send this",
    },
    {
      "<leader>af",
      function()
        require("sidekick.cli").send({ msg = "{file}" })
      end,
      mode = "n",
      desc = "send file",
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
      "<leader>ad",
      function()
        require("sidekick.cli").close()
      end,
      mode = "n",
      desc = "detach cli session",
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
        require("sidekick.cli").toggle({ name = "opencode", focus = true })
      end,
      desc = "opencode toggle",
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
