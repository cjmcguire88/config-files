"########################
"## MINIBEAST INIT.VIM ##
"########################

""" Vim-Plug
call plug#begin()

" Aesthetics
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

""" Coloring
syntax on
color material
highlight Pmenu gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none


""" Other Configurations
filetype plugin indent on
set encoding       =utf-8
set path          +=**
set fillchars     +=vert:\ 
set shortmess     +=c
set backspace      =indent,eol,start
set list listchars =trail:»,tab:»-
set updatetime     =300
set tabstop        =4
set softtabstop    =4
set shiftwidth     =4
set scrolloff      =5
set laststatus     =2
set cmdheight      =1
set mouse          =a
set hidden
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
set lazyredraw
set wrap breakindent
set linebreak
set confirm
set title
set smarttab
set autoindent
set wildmenu
set cursorline
"set nobackup
"set nowritebackup

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

" Python3 VirtualEnv
let g:python3_host_prog = expand('~/.config/nvim/env/bin/python')

" Coc
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Coc status-line integration
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>x  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

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

" Python
autocmd FileType python nmap <leader>py :0,$!~/.config/nvim/env/bin/python -m yapf<CR>

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

" Show Documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
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
nmap <leader>tw :call TrimWhitespace()<CR>
xmap <leader>l  gaip*
nmap <leader>l  gaip*
nmap <leader>t  <C-w>s<C-w>j:terminal<CR>
nmap <leader>vt <C-w>v<C-w>l:terminal<CR>
nmap <leader>f  :Files<CR>
nmap <leader>g  :Goyo<CR>
nmap <leader>h  :RainbowParentheses!!<CR>
nmap <silent> <leader><leader> :noh<CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>
