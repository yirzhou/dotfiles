require'FTerm'.setup({
    dimensions  = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5
    },
    border = 'single' -- or 'double'
})

-- Keybinding
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<S-t>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<S-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
