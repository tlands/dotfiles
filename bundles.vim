syntax on
set nocompatible
filetype on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles go here
Bundle 'gmarik/vundle'


" Ctrl-p
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
" tpope the man, the myth, the ledge
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
"Nerd 
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
" Misc
Bundle 'vim-scripts/AutoTag'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
Bundle 'danro/rename.vim'
Bundle 'vim-scripts/Tabmerge'
Bundle 'Raimondi/delimitMate'
Bundle 'airblade/vim-gitgutter'
Bundle 'zhaocai/GoldenView.vim'
" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" Search Ag/Ack
Bundle "rking/ag.vim"
Bundle 'steffanc/ack.vim'
Bundle 'ggreer/the_silver_searcher'
" Airline
Bundle "bling/vim-airline"
" colors
Bundle 'flazz/vim-colorschemes'
" Experiemental
" Bundle 'terryma/vim-multiple-cursors'


filetype plugin indent on
set shell=/bin/bash
set autoindent            " set auto indent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set foldmethod=syntax
set expandtab             " use spaes, not tab characters
set nocompatible          " dont need to be compatible with old vim
set encoding=utf-8
set smartindent
set smarttab
set cursorline cursorcolumn       " crosshairs"
set number
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set mouse=a                       " enable mouse support
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set ruler                         " show row and column in footer
set winheight=30
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set eol
set noswapfile										" disable .swp files creation in vim
set backspace=indent,eol,start
set nobackup
set nowb
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set tags=./tags,tags;$HOME
if has('cmdline_info')
  set ruler                   " Show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
  " Selected characters/lines in
  " visual mode
endif
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current"

" No annoying sound on errors
 set noerrorbells
 set novisualbell
 set t_vb=
 set tm=500

" set dark background and color scheme
set background=dark
" Syntax and colours
syntax enable
if $TERM == "xterm-256color"
  set t_Co=256
  colorscheme wombat256mod
 else
  colorscheme solarized
endif

highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray
" set up some custom colors
highlight StatusLine   ctermbg=3 ctermfg=0
highlight IncSearch    ctermbg=0   ctermfg=3
highlight Search       ctermbg=0   ctermfg=9
highlight SpellBad     ctermbg=0   ctermfg=1

" highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=3 ctermbg=0
  au InsertLeave * hi StatusLine ctermbg=3 ctermfg=0
endif


"YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

" set leader key to space instead of \ and map jj to esc
let mapleader = " "
inoremap jj <ESC>
nnoremap <Leader>q :q<cr>
nnoremap <Leader>d :sh<cr>

" Vi navigation, bitch
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

nnoremap <leader>bd :bd<cr>

" GoldenView
let g:goldenview__enable_default_mapping = 0
" 3. jump to next and previous window
nmap <silent> <C-N>  <Plug>GoldenViewNext
nmap <silent> <C-O>  <Plug>GoldenViewPrevious

" Autosaving and Line numbers
au VimResized,FocusLost,BufLeave * silent! wa
" command to generate index for ctags
" nnoremap <Leader>sr :!ctags -R .pe -bR;<cr><cr>

" Sweet pane handling
nnoremap <leader>v :vsplit<cr>
nnoremap <leader>h :split<cr>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map ff <c-w><c-w>
map <leader>\ <c-W>=

if has('gui_running')
  set vb
  colorscheme base16-ocean
  set guioptions-=T
  set guioptions-=r
  set go-=L
  set guifont=Source\ Code\ Pro\ for\ Powerline:h12
endif

if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Leader tricks
" let mapleader=','
if has('gui_running')
  nnoremap <Leader>w :set expandtab<cr>:%retab<cr>:w<cr>
else
  nnoremap <Leader>w :w<cr>
endif

" ctags commands
nnoremap <Leader>st :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <Leader>sv :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <Leader>sh :sp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <Leader>sr :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .; cscope -bR;<cr><cr>
" Use the arrows to change buffers
map <right> :bn<cr>
map <left> :bp<cr>

" Ctrl-P
let g:ctrlp_max_height = 30
let g:ctrlp_match_window_reversed = 0
nnoremap <leader><leader>c :CtrlPClearCache<cr> <cr>
nnoremap <silent> <C-D> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll|pyc|os|swp|orig|out|bak)$'}
" Using Ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'
if executable("ag")
      let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
endif
nnoremap <Leader>ff :Ack!
" map Silver Searcher
 map <leader>a :Ag!<space>
nnoremap <Leader>fw #*:AckFromSearch!<CR>
" search selection
vmap <Leader>ff /##*:AckFromSearch!<CR>

" White space, delete from file!
 map <leader>W :%s/\s\+$//gce \| w<cr>

"snipmate
imap <C-e> <esc>a<Plug>snipMateNextOrTrigger
smap <C-e> <Plug>snipMateNextOrTrigger


" Airline plugin
 let g:airline_theme='wombat'
 let g:airline_detect_modified=1
 let g:airline_powerline_fonts=1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_section_x = airline#section#create([])
 let g:airline_section_y = airline#section#create([])
