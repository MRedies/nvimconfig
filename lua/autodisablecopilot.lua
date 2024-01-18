-- Disable everywhere
vim.api.nvim_create_autocmd({ 'VimEnter' }, {
    pattern = '*',
    command = "Copilot disable"
})

-- Enable only in hfrt-folder, only once at beginning
vim.api.nvim_create_autocmd({ 'VimEnter' }, {
    pattern = vim.fn.expand('~') .. '*/repos/hfrt/*',
    command = "Copilot enable"
})

-- Pull the plug if we touch any red-listed folder
vim.api.nvim_create_autocmd({ 'BufEnter' }, {
    pattern = vim.fn.expand('~') .. '*/repos/crypto_hft/*,*/repos/danshfrt/*,*/repos/hfrt-*/*',
    command = "Copilot disable"
})

