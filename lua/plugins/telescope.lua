return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>/", false },
    { "<leader><space>", false },
    { "<leader>,", false },
    { "<leader>:", false },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>fg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>sG", false },
    { "<leader>sb", false },
  },
}
