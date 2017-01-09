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
" spell checking.
"--------------------------------------

set nospell

"--------------------------------------
" syntax colors.
"--------------------------------------

syntax on
"colorscheme jellybeans
"colorscheme Tomorrow-Night
colorscheme monokai

" highlight current line.
"set cursorline
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
map <silent> <S-Tab> :bprevious<CR>
map <silent> <Tab> :bnext<CR>

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

" jump to sol or eol (german keyboard).
nnoremap 0 0
vnoremap 0 0
nnoremap q ^
vnoremap q ^
nnoremap Q $
vnoremap Q $
nnoremap ü $
vnoremap ü $

" jump to empty lines (german keyboard).
nnoremap ö }
nnoremap Ö {
vnoremap ö }
vnoremap Ö {
nnoremap , }
nnoremap ; {
vnoremap , }
vnoremap ; {

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

"nmap <Leader>wh <C-w><C-s>
"nmap <Leader>wv <C-w><C-v>
"nmap <Leader>ww <C-w><C-w>
"nmap <Leader>wc :close<CR>

nmap <Leader>o :CtrlP<CR>
nmap <Leader>s :w<CR>

"nmap <Leader><Space> <C-w><C-w>
"nmap <Leader><Leader> <C-w><C-w>

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
"let g:airline_theme = 'bubblegum'
let g:airline_theme = 'distinguished'

autocmd FileType * unlet! g:airline#extensions#whitespace#checks
autocmd FileType markdown let g:airline#extensions#whitespace#checks = ['indent']

autocmd FileType python nmap <silent> <leader>x :leftabove split <bar> :term python3 %<cr>
"autocmd FileType python nmap <silent> <leader>x :rightbelow vertical split <bar> :term python3 %<cr>

" nerdtree (file tree explorer) and tagbar (file structure viewer) panels.
map <silent> <A-1> :NERDTreeToggle<CR>
map <silent> <A-2> :TagbarToggle<CR>

" ctrlp (fuzzy file and buffer finder).
nnoremap <C-p> :CtrlP<CR>
nnoremap <A-p> :CtrlPBuffer<CR>

"nnoremap <leader>f :CtrlP<CR>
"nnoremap <leader>b :CtrlPBuffer<CR>
"nnoremap <leader>m :CtrlPMRUFiles<CR>
"nnoremap <leader>t :CtrlPTag<CR>

" vim-easymotion
"map <leader> <plug>(easymotion-prefix)

" elm-vim
let g:elm_format_autosave = 1

" vimwiki
let g:vimwiki_list = [{
  \ 'path': '~/.vimwiki', 'template_path': '~/vimwiki/templates/',
  \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',
  \ 'path_html': '~/vimwiki/site_html/', 'custom_wiki2html': 'vimwiki_markdown',
  \ 'template_ext': '.tpl'}]

" vimwiki
"nmap <Leader>wf <Plug>VimwikiFollowLink
"nmap <Plug>NoVimwikiFollowLink <Plug>VimwikiFollowLink

" vimwiki/diary
map <Leader>wW <Plug>VimwikiMakeDiaryNote
map <Leader>wy <Plug>VimwikiMakeYesterdayDiaryNote
map <Leader>wE <Plug>VimwikiDiaryIndex
map <Leader>wg <Plug>VimwikiDiaryGenerateLinks
