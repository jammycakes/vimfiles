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
set list listchars=tab:» ,trail:·
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
set nu
set modelines=0
set encoding=utf-8
set relativenumber
set smartcase
set gdefault
set colorcolumn=100

inoremap <C-L> <ESC>

syntax enable

set bg=dark
if has("gui_running")
    set gfn=Consolas:h9:cANSI
    colorscheme koehler
    hi Comment gui=italic
else
    colorscheme darkblue
    hi Comment ctermfg=red cterm=bold
endif

execute pathogen#infect()

autocmd Filetype ps1 setlocal noexpandtab
