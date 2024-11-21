return {
  'suy/vim-context-commentstring',
  dependencies = { 'tpope/vim-commentary', 'mxw/vim-jsx' }, -- Ensure it's loaded with commentary and JSX
  ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  config = function()
    -- Enable context-aware comment string
    vim.g['context_commentstring_enable_autocmd'] = 0

    -- Optionally use auto commands to set the commentstring
    -- Autocommand for setting context-aware commentstring
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'javascriptreact', 'typescriptreact' },
      callback = function()
        vim.bo.commentstring = '{/*%s*/}'
      end,
    })
  end,
}
