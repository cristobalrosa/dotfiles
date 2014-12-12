" vundle installation:
set nocompatible 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
" Manejo de git desde vim
Plugin 'tpope/vim-fugitive'
" vim-scripts repos
Plugin 'L9'
" non git-hub repos
Plugin 'git://git.wincent.com/command-t.git'
" autocompleta parentesis, etc
Plugin 'tpope/vim-surround'
" Chequeo de sintaxis
Plugin 'scrooloose/syntastic'
" Uso the ack grep desde vim
Plugin 'mileszs/ack.vim'
" solarized colors 
Plugin 'altercation/vim-colors-solarized'
" NERD Tree - Filesystem browser
Plugin 'scrooloose/nerdtree'
" Status line with git branch information
Plugin 'bling/vim-airline'
" Tab Brownser
" it requires: sudo apt-get install exuberant-ctags
Plugin 'majutsushi/tagbar'
" autocomplete code
" You need to compile YMC ~/.vim/bundle/YouCompleteMe [master]$ ./install.sh --clang-completer
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline'
Plugin 'fholgado/minibufexpl.vim'
" Arduino syntax highlight
Plugin 'sudar/vim-arduino-syntax'
Plugin 'jceb/vim-orgmode'
call vundle#end()
filetype plugin indent on

set encoding=utf8
set paste
set nocompatible
set nowrap
set copyindent
syntax enable
set background=dark
colorscheme solarized
set hlsearch
set incsearch  "busqueda incremental
set autoindent
set textwidth=0
set clipboard+=unnamed "Usar el clipboard para copiar y pegar
set commentstring=\ #\ %s
set ignorecase
set wildmenu
set backspace=indent,eol,start
set ruler "show the rules
set showcmd "mostar comando mientras lo escribres
set expandtab "sustituye tabuladores por espacios
set shiftwidth=4 "auto-indent.
set softtabstop=4
set number " show line numbers
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
" Folding options
set foldmethod=indent   "fold based on indent
set foldnestmax=1       "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
" Show status line
set laststatus=2
" Use 256 colours 
set t_Co=256
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"Special characters on.
" Highligh tabs, trailing spaces
set listchars=tab:>-,trail:-,eol:¶
set list
set ofu=syntaxcomplete#Complete
autocmd filetype python set expandtab
set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"

" NERD Tree shortcut
map <C-n> :NERDTreeToggle<CR>
" Fancy simbols en status line - airline
let g:airline_powerline_fonts=1
let g:airline_theme="base16"
nmap <C-t> :TagbarToggle<CR>
" Tagbar on the left
let g:tagbar_left = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_checker_args='--ignore=E501'
"YouCompleteMe global config
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ymc_extra_conf.py'
"YCM Preview active
let g:ycm_add_preview_to_completeopt = 1
"YCM Preview autoclose
let g:ycm_autoclose_preview_window_after_completion = 1

