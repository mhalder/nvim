return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/terminus/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/terminus/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "saghen/blink.cmp",
    "ibhagwan/fzf-lua",
    "nvim-treesitter/nvim-treesitter",
  },
  keys = {
    { "<leader>oo", "<cmd>Obsidian open<cr>", desc = "open" },
    { "<leader>on", "<cmd>Obsidian new<cr>", desc = "new" },
    { "<leader>oq", "<cmd>Obsidian quick_switch<cr>", desc = "quick switch" },
    { "<leader>of", "<cmd>Obsidian follow_link<cr>", desc = "follow link" },
    { "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "backlinks" },
    { "<leader>ot", "<cmd>Obsidian tags<cr>", desc = "tags" },
    { "<leader>od", "<cmd>Obsidian today<cr>", desc = "today" },
    { "<leader>oy", "<cmd>Obsidian yesterday<cr>", desc = "yesterday" },
    { "<leader>om", "<cmd>Obsidian tomorrow<cr>", desc = "tomorrow" },
    { "<leader>os", "<cmd>Obsidian search<cr>", desc = "search" },
    { "<leader>ol", "<cmd>Obsidian link<cr>", desc = "link", mode = { "n", "v" } },
    { "<leader>oL", "<cmd>Obsidian link_new<cr>", desc = "link new", mode = { "n", "v" } },
    { "<leader>oe", "<cmd>Obsidian extract_note<cr>", desc = "extract", mode = { "n", "v" } },
    { "<leader>ow", "<cmd>Obsidian workspace<cr>", desc = "workspace" },
    { "<leader>or", "<cmd>Obsidian rename<cr>", desc = "rename" },
    { "<leader>op", "<cmd>Obsidian paste_img<cr>", desc = "paste image" },
    { "<leader>oc", "<cmd>Obsidian toggle_checkbox<cr>", desc = "toggle checkbox" },
    { "<leader>oT", "<cmd>Obsidian template<cr>", desc = "template" },
    { "<leader>oN", "<cmd>Obsidian new_from_template<cr>", desc = "new from template" },
    { "<leader>oD", "<cmd>Obsidian dailies<cr>", desc = "dailies list" },
    { "<leader>oC", "<cmd>Obsidian toc<cr>", desc = "table of contents" },
    { "<leader>oO", "<cmd>Obsidian links<cr>", desc = "all links overview" },
    {
      "gf",
      function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>Obsidian follow_link<cr>"
        else
          return "gf"
        end
      end,
      desc = "follow file/link",
      expr = true,
    },
  },
  opts = {
    workspaces = {
      {
        name = "terminus",
        path = "~/terminus",
      },
    },

    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
      alias_format = "%B %-d, %Y",
      template = "daily.md",
    },

    completion = {
      nvim_cmp = false,
      blink = true,
      min_chars = 2,
    },

    legacy_commands = false,

    picker = {
      name = "fzf-lua",
      note_mappings = {
        new = "<C-x>",
        insert_link = "<C-l>",
      },
      tag_mappings = {
        tag_note = "<C-x>",
        insert_tag = "<C-l>",
      },
    },

    new_notes_location = "notes",

    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. "-" .. suffix
    end,

    note_frontmatter_func = function(note)
      if note.title then
        note:add_alias(note.title)
      end

      local out = {
        id = note.id,
        aliases = note.aliases,
        tags = note.tags,
        created = os.date("%Y-%m-%d"),
        modified = os.date("%Y-%m-%d"),
      }

      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,

    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
      substitutions = {
        yesterday = function()
          return os.date("%Y-%m-%d", os.time() - 86400)
        end,
        tomorrow = function()
          return os.date("%Y-%m-%d", os.time() + 86400)
        end,
      },
    },

    backlinks = {
      height = 10,
      wrap = true,
    },

    sort_by = "modified",
    sort_reversed = true,

    search_max_lines = 1000,

    open_notes_in = "current",

    checkbox = {
      order = { " ", "x", ">", "~", "!" },
      [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
      ["x"] = { char = "", hl_group = "ObsidianDone" },
      [">"] = { char = "", hl_group = "ObsidianRightArrow" },
      ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
      ["!"] = { char = "", hl_group = "ObsidianImportant" },
    },

    ui = {
      enable = true,
      update_debounce = 200,
      max_file_length = 5000,
      bullets = { char = "•", hl_group = "ObsidianBullet" },
      external_link_icon = { char = "", hl_group = "ObsidianExtLinkIcon" },
      reference_text = { hl_group = "ObsidianRefText" },
      highlight_text = { hl_group = "ObsidianHighlightText" },
      tags = { hl_group = "ObsidianTag" },
      block_ids = { hl_group = "ObsidianBlockID" },
      hl_groups = {
        ObsidianTodo = { bold = true, fg = "#f78c6c" },
        ObsidianDone = { bold = true, fg = "#89ddff" },
        ObsidianRightArrow = { bold = true, fg = "#f78c6c" },
        ObsidianTilde = { bold = true, fg = "#ff5370" },
        ObsidianImportant = { bold = true, fg = "#d73128" },
        ObsidianBullet = { bold = true, fg = "#89ddff" },
        ObsidianRefText = { underline = true, fg = "#c792ea" },
        ObsidianExtLinkIcon = { fg = "#c792ea" },
        ObsidianTag = { italic = true, fg = "#89ddff" },
        ObsidianBlockID = { italic = true, fg = "#89ddff" },
        ObsidianHighlightText = { bg = "#75662e" },
      },
    },

    attachments = {
      img_folder = "attachments",
      img_text_func = function(client, path)
        path = client:vault_relative_path(path) or path
        return string.format("![%s](%s)", path.name, path)
      end,
    },

    follow_url_func = function(url)
      vim.ui.open(url)
    end,

    follow_img_func = function(img)
      vim.ui.open(img)
    end,
  },
}
