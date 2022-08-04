if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
    Plug 'tpope/vim-fugitive'
    Plug 'puremourning/vimspector'
    Plug 'sebdah/vim-delve'
    Plug 'preservim/nerdcommenter'
    Plug 'vim-airline/vim-airline'
    Plug 'tomasiser/vim-code-dark'
    Plug 'jacoborus/tender.vim'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'scrooloose/nerdtree'
	Plug 'jistr/vim-nerdtree-tabs'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'chun-yang/auto-pairs'
    Plug 'eugen0329/vim-esearch'
	"" Vim-Session
	Plug 'xolox/vim-misc'
    Plug 'xolox/vim-session'
    "Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'joshdick/onedark.vim'
    Plug 'terryma/vim-multiple-cursors'
    if has("nvim")
        Plug 'neovim/nvim-lspconfig'
        "  Plug 'nvim-lua/completion-nvim'
        Plug 'glepnir/lspsaga.nvim'
        Plug 'folke/lsp-colors.nvim'
        Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
        Plug 'kristijanhusak/defx-git'
        Plug 'kristijanhusak/defx-icons'
        Plug 'kyazdani42/nvim-web-devicons'
        Plug 'ryanoasis/vim-devicons'
        Plug 'nvim-lua/popup.nvim'
        Plug 'nvim-lua/plenary.nvim'
        Plug 'folke/todo-comments.nvim'
        Plug 'nvim-telescope/telescope.nvim'
        Plug 'hrsh7th/vim-vsnip'
        Plug 'hrsh7th/vim-vsnip-integ'
        Plug 'kyazdani42/nvim-tree.lua'
        "" Vim completion
        Plug 'hrsh7th/cmp-nvim-lsp'
        Plug 'hrsh7th/cmp-buffer'
        Plug 'hrsh7th/cmp-path'
        Plug 'hrsh7th/cmp-cmdline'
        Plug 'hrsh7th/nvim-cmp'
        Plug 'onsails/lspkind-nvim'
        " For vsnip users.
        Plug 'hrsh7th/cmp-vsnip'
        Plug 'hrsh7th/vim-vsnip'
        " nvim-transparent
        Plug 'xiyaowong/nvim-transparent'
    end
call plug#end()

"" Use modeline overrides
"" Themes config
if (has("termguicolors"))
    syntax enable
    set termguicolors
endif

syntax on
"colorscheme codedark
colorscheme onedark
"let g:airline_theme = 'tender'
let g:airline_theme = 'onedark'
"let g:lightline = { 'colorscheme': 'tenderplus' }
let g:lightline = { 'colorscheme': 'onedark' }

noremap <C-z><C-x> :TransparentToggle<CR>

" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "yes"
let g:session_autosave = "yes"
let g:session_verbose_messages = 0
let g:session_autosave_to = 'default'

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ackprg = 'ag --vimgrep'
