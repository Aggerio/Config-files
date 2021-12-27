set number " be iMproved, required
filetype plugin on            " required
syntax on

call plug#begin()

" let Vundle manage Vundle, required
Plug 'scrooloose/nerdtree' 
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
Plug 'jiangmiao/auto-pairs'
Plug 'prabirshrestha/async.vim'
Plug 'tpope/vim-unimpaired'
Plug 'tomasr/molokai'
Plug 'srcery-colors/srcery-vim'
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'

call plug#end()            " required
filetype plugin indent on    " required
"set background=dark
colorscheme molokai
"colorscheme srcery
set noshowmode
" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#whitespace#enabled = 0

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
"let g:airline_theme = 'transparent'
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2

source $HOME/.config/nvim/plug-config/coc.vim
map <C-n> :NERDTreeToggle<CR>
set clipboard=unnamedplus
set number
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprev<CR>
nnoremap <C-b> :!g++ -o %:r % && ./%:r <CR>
nnoremap <C-p> :!python3 % <CR>
nnoremap <C-q> :bd<CR>
nnoremap <C-s> :w <CR>

"auto indent c++ code
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}
autocmd FileType c,cpp,objc ClangFormatAutoEnable
