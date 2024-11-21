return {
  'stevearc/oil.nvim',
  -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      delete_to_trash = true,
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<M-m>'] = 'actions.select_split',
      },
      view_options = {
        show_hidden = true,
      },
    }

    -- Open parent directory in current window
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

    -- Open parent directory in floating window
    vim.keymap.set('n', '<space>-', require('oil').toggle_float)
  end,
}
