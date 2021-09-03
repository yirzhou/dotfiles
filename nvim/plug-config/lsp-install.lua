require('lsp_signature').on_attach()
local on_attach = function(client, bufnr)
    require'lsp_signature'.on_attach({
	    bind = true,
        use_lspsaga = true,
	    floating_window = true,
	    fix_pos = true,
        hint_enable = true,
	    hi_parameter = "Search",
        hint_scheme = "String",
	    handler_opts = {
	        "single"
	    },
    })
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
end


local function setup_servers()
    require'lspinstall'.setup()
    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do
        require'lspconfig'[server].setup {
            -- Set up LSP signature (i.e. code documentation)
            on_attach = on_attach,
        }
    end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
