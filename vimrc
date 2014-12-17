" Set up the runtime path to use this folder.
" See http://stackoverflow.com/q/3377298
" (Slightly modified to load vundle as well.)

let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)
let s:portable = expand('<sfile>:p:h')
let &runtimepath = printf('%s,%s,%s/after,%s/bundle/vundle', s:portable, &runtimepath, s:portable, s:portable)

set nocompatible
filetype off
call vundle#rc(printf('%s/bundle', s:portable))

" ====== Vundle-configured plugins ====== "

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'PProvost/vim-ps1'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'lsdr/monokai'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'

" ====== C# code completion ====== "

if has("python") && has("win32")
    Plugin 'nosami/omnisharp'
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
endif

" ====== end Vundle-configured plugins ====== "

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
set list listchars=tab:>-,trail:�
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
set modeline
set smartcase
set gdefault
set encoding=utf8

" silent! to comfort vim 7.2 on 1and1 server
silent! set colorcolumn=100
silent! set relativenumber

let g:ctrlp_regexp = 1


" silent required for vim-javascript with unpatched vim 7.4
" - see vim-javascript readme
silent! set regexpengine=1

inoremap <C-L> <ESC>

syntax enable

set bg=dark
if has("gui_running")
    if has("win32")
        set gfn=Consolas:h9:cANSI
    endif
    if has("gui_gtk2")
        set gfn=Droid\ Sans\ Mono\ 9
    endif
    colorscheme monokai
    hi Comment gui=italic
    hi ColorColumn guibg=#000033
else
    " silent is required here for vim with msysgit, which doesn't include any
    " colour schemes
    silent! colorscheme koehler
    hi Comment ctermfg=red cterm=bold
    hi ColorColumn ctermbg=darkblue
endif

" PowerShell should use tabs for indentation, not spaces
" This is for interoperability with PowerShell ISE, which uses tabs rather
" than spaces, doesn't show them, and doesn't give you an option to configure
" them.
autocmd Filetype ps1 setlocal noexpandtab

" .config files should use two spaces for indent, not four
" This is to match what Visual Studio does by default
autocmd Filetype config setlocal ts=2 sts=2 sw=2
