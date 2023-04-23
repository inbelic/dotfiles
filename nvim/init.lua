vim.cmd [[source ~/.config/nvim/config.vim]]

require'lspconfig'.hls.setup{}
require'lspconfig'.ols.setup{}

vim.diagnostic.config {
    virtual_text = false,
    underline = true,
    signs = false,
}

-- Global mappings
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local opts = { buffer = ev.buf }
        vim.keymap.set('n', '<space>D', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', '<space>d', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    end,
})
