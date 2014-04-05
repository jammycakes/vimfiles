" set default 'runtimepath' (without ~/.vim folders)
let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)

" what is the name of the directory containing this file?
let s:portable = expand('<sfile>:p:h')

" add the directory to 'runtimepath'
let &runtimepath = printf('%s,%s,%s/after,%s/bundle/vundle', s:portable, &runtimepath, s:portable, s:portable)

set nocompatible
filetype off
call vundle#rc()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'PProvost/vim-ps1'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'

filetype plugin indent on

set ls=2
set nowrap
set nocompatible
set autoindent
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set list listchars=tab:>-,trail:·
set scrolloff=3
set showcmd
set hlsearch
set incsearch
set ruler
set nobackup
set number
set ignorecase
set title
set ttyfast
set hidden
set backspace=indent,eol,start
set modelines=0
set encoding=utf-8
set smartcase
set gdefault
set colorcolumn=100
set relativenumber

" required for vim-javascript with vim 7.4 - see readme
silent! set regexpengine=1


inoremap <C-L> <ESC>

syntax enable

set bg=dark
if has("gui_running")
    set gfn=Consolas:h9:cANSI
    colorscheme murphy
    hi Comment gui=italic
    hi ColorColumn guibg=#000033
else
    silent! colorscheme darkblue
    hi Comment ctermfg=red cterm=bold
    hi ColorColumn ctermbg=darkblue
endif

autocmd Filetype ps1 setlocal noexpandtab
