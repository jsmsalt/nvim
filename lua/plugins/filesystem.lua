return {
  -- {
  --   -- Neotree filesystem
  --   'nvim-neo-tree/neo-tree.nvim',
  --   enabled = false,
  --   version = '*',
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
  --     'MunifTanjim/nui.nvim',
  --   },
  --   cmd = 'Neotree',
  --   keys = {
  --     { '<leader>e', ':Neotree reveal<CR>', desc = 'Open [E]xplorer', silent = true },
  --   },
  --   opts = {
  --     buffers = {
  --       follow_current_file = {
  --         enabled = false, -- This will find and focus the file in the active buffer every time
  --         --              -- the current file is changed while the tree is open.
  --         leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
  --       },
  --     },
  --     filesystem = {
  --       follow_current_file = {
  --         enabled = false, -- This will find and focus the file in the active buffer every time
  --         --              -- the current file is changed while the tree is open.
  --         leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
  --       },
  --       window = {
  --         mappings = {
  --           ['<leader>e'] = 'close_window',
  --         },
  --       },
  --     },
  --   },
  -- },
  {
    -- Oil filesystem
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      CustomOilBar = function()
        local path = vim.fn.expand '%'
        path = path:gsub('oil://', '')

        return '  ' .. vim.fn.fnamemodify(path, ':.')
      end

      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = 'actions.refresh',
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        win_options = {
          winbar = '%{v:lua.CustomOilBar()}',
        },
        view_options = {
          show_hidden = true,
          is_always_hidden = function(name, _)
            local folder_skip = { 'dev-tools.locks', 'dune.lock', '_build' }
            return vim.tbl_contains(folder_skip, name)
          end,
        },
      }

      -- Open parent directory in current window
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

      -- Open parent directory in floating window
      vim.keymap.set('n', '<space>-', require('oil').toggle_float)
    end,
  },
}
