return {
  -- EXTRA PLUGINS
  { import = "lazyvim.plugins.extras.dap.core" },
  { import = "lazyvim.plugins.extras.test.core" },
  { import = "lazyvim.plugins.extras.lang.angular" },
  { import = "lazyvim.plugins.extras.lang.astro" },
  { import = "lazyvim.plugins.extras.lang.docker" },
  { import = "lazyvim.plugins.extras.lang.git" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.kotlin" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
  { import = "lazyvim.plugins.extras.lang.python" },
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.sql" },
  { import = "lazyvim.plugins.extras.lang.tailwind" },
  { import = "lazyvim.plugins.extras.lang.terraform" },
  { import = "lazyvim.plugins.extras.lang.toml" },
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.yaml" },
  { import = "lazyvim.plugins.extras.lang.zig" },
  --
  -- DISABLE PLUGINS
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },
  -- Override which-key Options
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>a", group = "ai", mode = { "n", "x" } },
        { "<leader>gl", group = "Git Log", mode = { "n", "x" } },
        { "<leader>gh", group = "Git Hunks", mode = { "n", "x" } },
        { "<leader>gd", group = "Git Diff", mode = { "n", "x" } },
        { "<leader>gS", group = "Git Stash", mode = { "n", "x" } },
      },
    },
  },
  -- Override snacks options
  {
    "folke/snacks.nvim",
    opts = {
      picker = {},
    },
    keys = {
      {
        "<leader>gb",
        false,
      },
      {
        "<leader>gb",
        function()
          Snacks.picker.git_branches()
        end,
        desc = "Git Branches",
      },
      { "<leader>gl", false },
      {
        "<leader>glp",
        function()
          Snacks.picker.git_log()
        end,
        desc = "Git Log Project",
      },
      {
        "<leader>gll",
        function()
          Snacks.picker.git_log_line()
        end,
        desc = "Git Log Line",
      },
      {
        "<leader>glf",
        function()
          Snacks.picker.git_log_file()
        end,
        desc = "Git Log File",
      },
      { "<leader>gS", false },
      {
        "<leader>gSl",
        function()
          Snacks.picker.git_stash()
        end,
        desc = "Git Stash List",
      },
    },
  },
  -- Override gitsigns options
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    keys = {
      { "<leader>ghs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Git Hunk Stage" },
      { "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Git Hunk Undo Stage" },
      { "<leader>ghr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Git Hunk Reset" },
    },
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 100,
        virt_text_pos = "eol",
      },
    },
    config = true,
  },
}
