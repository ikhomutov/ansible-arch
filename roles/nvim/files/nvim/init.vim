"=====================================================
"" Vundle settings
"=====================================================
call plug#begin('~/.vim/bundle')

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'majutsushi/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/nerdcommenter'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'fisadev/vim-isort'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'w0rp/ale'
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'

Plug 'pearofducks/ansible-vim'

call plug#end()

filetype on
filetype plugin on
filetype plugin indent on

"====================================================
"" Plugin settings
"====================================================

" Vim-GitGutter Settings
set updatetime=250

" indentLine settings
let g:indentLine_char = '¦'
let g:indentLine_color_term = 67
let g:indentLine_conceallevel = 0

" vim-buffergator settings
map <F4> :BuffergatorToggle<CR>
let g:buffergator_viewport_split_policy="R"
let g:buffergator_vsplit_size=40
let g:buffergator_autodismiss_on_select=0
let g:buffergator_autoupdate=1
let g:buffergator_show_full_directory_path=0

" Vim-aifline Settings
set laststatus=2
set showtabline=2
let g:airline_theme='simple'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=0
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=0
let g:airline#extensions#tabline#show_splits=0
let g:airline#extensions#tabline#fnamemod =':p'
let g:airline#extensions#tabline#fnamecollapse=0

" vimtex settings
let g:vimtex_view_method = 'mupdf'
let g:vimtex_compiler_progname = 'nvr'

" NERDTree Settings
map <F3> :NERDTreeTabsToggle<CR>
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeMapJumpNextSibling = ''
let NERDTreeMapJumpPrevSibling = ''

" NERDCommenter Settings
let g:NERDDefaultAlign = 'left'

" Snippet Settings
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

" Python-Syntax Settings
let g:python_highlight_all = 1

"====================================================
"" General settings
"====================================================

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Appearance
set clipboard=unnamedplus
syntax on
set relativenumber
set number
set list
set lcs=tab:⟶\ ,space:·,trail:·,nbsp:_,eol:¬

let g:loaded_matchparen=1

" Indentations
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" File backup
set nobackup
set nowritebackup
set noswapfile

" File specific staff
au FileType python call SetPythonOptions()
au FileType html call SetHtmlOptions()
au FileType htmldjango call SetHtmlOptions()
au FileType javascript call SetJavaScriptOptions()

function SetPythonOptions()
    set colorcolumn=80
    set tabstop=4
    set shiftwidth=4
    set nowrap
    highlight ColorColumn ctermbg=23
endfunction

function SetJavaScriptOptions()
    set nowrap
    set colorcolumn=100
    highlight ColorColumn ctermbg=23
endfunction

function SetHtmlOptions()
    set colorcolumn=
endfunction

"" Key binding

let mapleader=' '

" Moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Saving
nnoremap <C-S> :w<CR>
inoremap <C-S> <ESC>:w<CR>
