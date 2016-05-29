"--------------------------------------
" plugin bundles.
"--------------------------------------

" load plugins from ~/.vim/bundle.
execute pathogen#infect()

"--------------------------------------
" general config.
"--------------------------------------

set nocompatible
set relativenumber
set visualbell
set hidden

" text wrapping.
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

" window split direction.
set splitbelow
set splitright

" code folding.
set foldmethod=indent
set foldlevel=99
"nnoremap <space> za

" bracket highlighting.
let loaded_matchparen = 1

" find files recursively.
set path+=**

"--------------------------------------
" syntax colors.
"--------------------------------------

syntax on
"colorscheme jellybeans
colorscheme Tomorrow-Night

" highlight current line.
set cursorline
"hi CursorLine term=none cterm=none ctermbg=8

"--------------------------------------
" invisible chars.
"--------------------------------------

" show eol and tab chars.
set listchars=eol:¬,tab:→→,extends:>,precedes:<
nnoremap <silent> <C-d> :set list!<CR>

"--------------------------------------
" text buffers.
"--------------------------------------

map <silent> <F2> :bprevious<CR>
map <silent> <F3> :bnext<CR>
map <silent> <S-Tab> :previous<CR>
map <silent> <Tab> :next<CR>

"--------------------------------------
" split windows.
"--------------------------------------

" open and close files.
nnoremap <C-n> :tab new<space>
nnoremap <M-n> :tab new<CR>
nnoremap <C-q> :q!<CR>
nnoremap <M-q> :bd<CR>

" edit and reload vim config.
nnoremap <C-x> :tab vnew ~/.vimrc<CR>
nnoremap <M-x> :source ~/.vimrc<CR>

" window movement.
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
"nmap <silent> <C-j> :wincmd j<CR>
"nmap <silent> <C-k> :wincmd k<CR>
"nmap <silent> <C-h> :wincmd h<CR>
"nmap <silent> <C-l> :wincmd l<CR>

"--------------------------------------
" cursor movement.
"--------------------------------------

" split line (opposite of join lines <S-j>).
nnoremap <S-k> i<CR><Esc>

" add empty line above or below.
nnoremap zj o<Esc>k
nnoremap zk O<Esc>j
"nnoremap oo o<Esc>k
"nnoremap OO O<Esc>j

" jump to eol (german keyboard).
nnoremap = $
vnoremap = $
nnoremap ß $
vnoremap ß $

" jump to empty lines (german keyboard).
nnoremap ö }
nnoremap Ö {
vnoremap ö }
vnoremap Ö {

" brackets.
nnoremap gb %
"nnoremap gb vab
"nnoremap gB vaB

"--------------------------------------
" text search.
"--------------------------------------

" search for text (german keyboard).
nnoremap ä /
nnoremap Ä ?

set ignorecase
nnoremap n nzz
nnoremap N Nzz

" toggle search highlight.
nnoremap <silent> <CR> :noh<CR>
nnoremap <silent> <C-f> :set hlsearch!<CR>

"--------------------------------------
" leader key.
"--------------------------------------

set notimeout
"let mapleader = "\<Space>"
nmap <Space> <Leader>

nmap <Leader>wh <C-w><C-s>
nmap <Leader>wv <C-w><C-v>
nmap <Leader>ww <C-w><C-w>
nmap <Leader>wc :close<CR>

nmap <Leader>o :CtrlP<CR>
nmap <Leader>s :w<CR>

nmap <Leader><Space> <C-w><C-w>
nmap <Leader><Leader> <C-w><C-w>

"--------------------------------------
" auto completion.
"--------------------------------------

filetype plugin on
filetype indent plugin on

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview

"--------------------------------------
" file types.
"--------------------------------------

set modeline

set expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

"--------------------------------------
" plugin settings.
"--------------------------------------

" leader key for plugins (german keyboard).
"nmap , <leader>

" airline (lightweight statusbar utility).
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'bubblegum'

autocmd FileType * unlet! g:airline#extensions#whitespace#checks
autocmd FileType markdown let g:airline#extensions#whitespace#checks = ['indent']

" nerdtree (file tree explorer) and tagbar (file structure viewer) panels.
map <silent> <A-1> :NERDTreeToggle<CR>
map <silent> <A-2> :TagbarToggle<CR>

" ctrlp (fuzzy file and buffer finder).
nnoremap <C-p> :CtrlP<CR>
nnoremap <A-p> :CtrlPBuffer<CR>

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
