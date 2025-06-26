return {
  {
    "NeogitOrg/neogit",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed, not both.
      -- 'nvim-telescope/telescope.nvim', -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
    keys = {
      { "<leader>gs", "<cmd>Neogit kind=split<cr>", desc = "Git Status (Neogit)" },
      { "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Git Commit (Neogit)" },
      { "<leader>gP", "<cmd>Neogit push<cr>", desc = "Git Push (Neogit)" },
      { "<leader>gp", "<cmd>Neogit pull<cr>", desc = "Git Pull (Neogit)" },
      { "<leader>gB", "<cmd>Neogit branch<cr>", desc = "Git Branch (Neogit)" },
      { "<leader>gSs", "<cmd>Neogit stash<cr>", desc = "Git Stash (Neogit)" },
      { "<leader>gf", "<cmd>Neogit fetch<cr>", desc = "Git Fetch (Neogit)" },
      { "<leader>gm", "<cmd>Neogit merge<cr>", desc = "Git Merge (Neogit)" },
      { "<leader>gr", "<cmd>Neogit reset<cr>", desc = "Git Reset (Neogit)" },
      { "<leader>gt", "<cmd>Neogit tag<cr>", desc = "Git Tag (Neogit)" },
      { "<leader>gdd", "<cmd>Neogit diff<cr>", desc = "Git Diff (Neogit)" },
      { "<leader>gll", "<cmd>Neogit log<cr>", desc = "Git Log (Neogit)" },
    },
    opts = {
      -- Each Integration is auto-detected through plugin presence, however, it can be disabled by setting to `false`
      integrations = {
        -- If enabled, use telescope for menu selection rather than vim.ui.select.
        -- Allows multi-select and some things that vim.ui.select doesn't.
        telescope = nil,
        -- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `diffview`.
        -- The diffview integration enables the diff popup.
        --
        -- Requires you to have `sindrets/diffview.nvim` installed.
        diffview = nil,

        -- If enabled, uses fzf-lua for menu selection. If the telescope integration
        -- is also selected then telescope is used instead
        -- Requires you to have `ibhagwan/fzf-lua` installed.
        fzf_lua = nil,

        -- If enabled, uses mini.pick for menu selection. If the telescope integration
        -- is also selected then telescope is used instead
        -- Requires you to have `echasnovski/mini.pick` installed.
        mini_pick = nil,
      },
    },
  },
}
