syntax on
set relativenumber
set number
set noswapfile
set ruler
set mouse=a
set encoding=UTF-8
" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
set shortmess-=S
" =============set auto change
set autoread
autocmd FocusGained * checktime
"====================================
set signcolumn=yes

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set exrc
set secure
set modeline
set modelines=10
set hlsearch!

nnoremap <F3> :set hlsearch!<CR>

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\ TIME:\ %{strftime('%c')}

let mapleader=","

set background=dark
let t:is_transparent = 0
function! Toggle_transparent()                                                       
  if t:is_transparent == 0                                                                      
    hi Normal guibg=#111111 ctermbg=black                                                       
    let t:is_transparent = 1                                                                    
  else                                                                                          
    hi Normal guibg=NONE ctermbg=NONE                                                           
    let t:is_transparent = 0                                                                    
  endif                                                                                         
endfunction
noremap <C-z><C-x> :call Toggle_transparent()<CR>
noremap <C-s> :w <CR>

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

runtime ./plug.vim
