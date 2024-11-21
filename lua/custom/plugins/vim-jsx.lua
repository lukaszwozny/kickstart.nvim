return {
  'mxw/vim-jsx',
  dependencies = { 'tpope/vim-commentary' }, -- Makes sure vim-commentary is loaded
  ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  config = function()
    -- Optional: configure for JSX support
  end,
}
