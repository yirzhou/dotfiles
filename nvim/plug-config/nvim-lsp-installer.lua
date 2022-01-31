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

local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {}
    -- Set up LSP signature (i.e. code documentation)
    opts.on_attach = on_attach

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- opts.on_attach = on_attach

    -- This setup() function is exactly the same as lspconfig's setup function.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
