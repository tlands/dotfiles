syntax on
set nocompatible
filetype on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles go here
Bundle 'gmarik/vundle'



Bundle 'quanganhdo/grb256'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ciaranm/detectindent'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'godlygeek/tabular'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'danro/rename.vim'
Bundle 'zeis/vim-kolor'
Bundle 'vim-scripts/Tabmerge'
Bundle 'ggreer/the_silver_searcher'
Bundle 'Raimondi/delimitMate'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"


filetype plugin indent on

set autoindent            " set auto indent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set foldmethod=syntax
set expandtab             " use spaes, not tab characters
set nocompatible          " dont need to be compatible with old vim
set encoding=utf-8
set smartindent
set smarttab
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set mouse=a                       " enable mouse support
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set vb                            " enable visual bell (disable audio bell)
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar
set nofoldenable                  " disable code folding
set clipboard=unnamed             " use the system clipboard
set wildmenu                      " enable bash style tab completion
set eol
set noswapfile										" disable .swp files creation in vim

" set dark background and color scheme
" set background=dark
colorscheme grb256
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

" set leader key to space instead of \ and map jj to esc
let mapleader = " "
inoremap jj <ESC>

" ctrlp config
let g:ctrlp_map = '<leader>f'
let g:ctrlp_max_height = 30
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window_reversed = 0
nnoremap <leader>v :CtrlPClearCache<cr> <cr>
nnoremap <silent> <C-D> :NERDTreeToggle<CR>

" Autosaving and Line numbers
au VimResized,FocusLost,BufLeave * silent! wa


" Using Ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'


" Sweet pane handling
nnoremap <leader>w :vsplit<cr>
nnoremap <leader>h :split<cr>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map ff <c-w><c-w>
map <leader>\ <c-W>=
