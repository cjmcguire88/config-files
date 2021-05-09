"########################
"## MINIBEAST INIT.VIM ##
"########################

""" Vim-Plug
call plug#begin()

" Aesthetics - Main
Plug 'mhinz/vim-startify'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'zaki/zazen'

" Functionalities
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'alvan/vim-closetag'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chrisbra/Colorizer'
Plug 'honza/vim-snippets'
Plug 'dkarter/bullets.vim'

call plug#end()

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

""" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

""" Coloring
syntax on
color material
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

""" Other Configurations
filetype plugin indent on
set encoding       =utf-8
set path          +=**
set fillchars     +=vert:\ 
set backspace      =indent,eol,start
set list listchars =trail:»,tab:»-
set tabstop        =4
set softtabstop    =4
set shiftwidth     =4
set scrolloff      =5
set laststatus     =2
set mouse          =a
set expandtab
set showcmd
set showmode
set ignorecase
set smartcase
set hlsearch
set incsearch
set ruler
set number
set relativenumber
set ttyfast
set lazyredraw
set wrap breakindent
set linebreak
set confirm
set title
set smarttab
set autoindent
set wildmenu
set cursorline

""" Plugin Configurations

" RustFmt
let g:rustfmt_autosave = 1

" NERDTree
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '↠'
let g:NERDTreeDirArrowCollapsible = '↡'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_section_warning = ''
"let g:airline#extensions#tabline#enabled = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Disable documentation window
set completeopt-=preview

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" indentLine
let g:indentLine_char = '▏'
let g:indentLine_color_gui = '#363949'
let g:indentLine_setConceal = 2
let g:indentLine_concealcursor = "nv"

" TagBar
let g:tagbar_width = 30
let g:tagbar_iconchars = ['↠', '↡']

" fzf-vim
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'Type'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Character'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

""" Filetype-Specific Configurations

" HTML, XML, Jinja
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType htmldjango inoremap {{ {{  }}<left><left><left>
autocmd FileType htmldjango inoremap {% {%  %}<left><left><left>
autocmd FileType htmldjango inoremap {# {#  #}<left><left><left>

" Markdown and Journal
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2

""" Custom Functions

" Trim Whitespaces
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\\\@<!\s\+$//e
    call winrestview(l:save)
endfunction

" OneDark Mode (Dark)
function! ColorOneDark()
    let g:airline_theme='one'
    color one
    set background=dark
    IndentLinesEnable
endfunction

" Zazen Mode (Black & White)
function! ColorZazen()
    let g:airline_theme='minimalist'
    color zazen
    IndentLinesEnable
endfunction

" Material Mode (Dark)
function! ColorMaterial()
    let g:airline_theme='deus'
    color material
    IndentLinesEnable
endfunction

" Paper Mode
function! ColorPaper()
    let g:airline_theme='deus'
    color PaperColor
    set background=light
    IndentLinesEnable
endfunction


""" Custom Mappings

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader=" "
nmap <leader>q :NERDTreeToggle<CR>
nmap \ <leader>q
nmap <leader>   :ColorToggle<CR>
nmap <leader>ee :Colors<CR>
nmap <leader>ea :AirlineTheme 
nmap <leader>e1 :call ColorMaterial()<CR>
nmap <leader>e2 :call ColorZazen()<CR>
nmap <leader>e3 :call ColorOneDark()<CR>
nmap <leader>e4 :call ColorPaper()<CR>
nmap <leader>r  :so ~/.config/nvim/init.vim<CR>
nmap <leader>0  :TagbarToggle<CR>
nmap <leader>t  :call TrimWhitespace()<CR>
xmap <leader>a  gaip*
nmap <leader>a  gaip*
nmap <leader>s  <C-w>s<C-w>j:terminal<CR>
nmap <leader>vs <C-w>v<C-w>l:terminal<CR>
nmap <leader>f  :Files<CR>
nmap <leader>g  :Goyo<CR>
nmap <leader>h  :RainbowParentheses!!<CR>
nmap <leader>j  :set filetype=journal<CR>
nmap <leader>k  :ColorToggle<CR>
autocmd FileType python nmap <leader>x :0,$!~/.config/nvim/env/bin/python -m yapf<CR>
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>

