" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   "autocmd VimEnter * PlugInstall
   "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'kyazdani42/nvim-tree.lua'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Floating terminal
    Plug 'numtostr/FTerm.nvim'

    " Status bar
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    
    " Tabline
    Plug 'romgrk/barbar.nvim'

    " Start screen
    Plug 'glepnir/dashboard-nvim'

    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Themes
    " Plug 'rrethy/nvim-base16'
    " Plug 'ishan9299/nvim-solarized-lua'
    Plug 'Mofiqul/vscode.nvim'

    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Native LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'sbdchd/neoformat'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'ahmedkhalf/lsp-rooter.nvim'
    Plug 'ray-x/lsp_signature.nvim'
    Plug 'folke/trouble.nvim'

    " Smooth scrolling
    Plug 'karb94/neoscroll.nvim'
    
    " Scrollbar
    Plug 'dstein64/nvim-scrollview', { 'branch': 'main' }

    " Rainbow parentheses
    Plug 'p00f/nvim-ts-rainbow'
    
    " Indentation
    Plug 'lukas-reineke/indent-blankline.nvim'

    " Rust
    Plug 'rust-lang/rust.vim'
call plug#end()
