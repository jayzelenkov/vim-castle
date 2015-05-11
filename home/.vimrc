"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bling/vim-airline'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-haml'
NeoBundle 'fatih/vim-go'
NeoBundle 'sickill/vim-monokai'
" NeoBundle 'fholgado/minibufepl'
" NeoBundle 'flazz/vim-colorschemes'
" NeoBundle 'chriskempson/base16-vim'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'tomasr/molokai'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'weynhamz/vim-plugin-minibufexpl'
NeoBundle 'edkolev/tmuxline.vim'


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

let g:airline#extensions#tabline#enabled = 1

" Enable syntax highlighting
syntax on

" Use solarized dark theme
set background=dark
colorscheme molokai

" We are running Vim, not Vi
set nocompatible

" Use the OS clipboard by default
set clipboard=unnamed,unnamedplus

" Enhance command-line completion
set wildmenu

" Show the best match so far as search strings are typed
set incsearch

" Highlight search results once found
set hlsearch

" Ignore case of searches
set ignorecase

" Highlight the current line the cursor is on
set cursorline

" Show 'invisible' characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

" Indentation without tabs. Use 2 spaces by default
set expandtab " insert spaces instead of a tab symbol
set tabstop=2 " number of spaces in one tab
set shiftwidth=2 " number of space chars used for indentation
set softtabstop=2 " make backspace delete/go back 2 spaces (e.g. like real tabs)

" Flashes matching brackets or parentheses
set showmatch

" Don't add empty newlines at the end of files
set binary
set noeol

" Don't set the title to thanks for flying vim
set titleold=

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don't create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" When scrolling off-screen do so 3 lines at a time, not 1
set scrolloff=3

" Enable line numbers
set number

" Nice statusbar
set laststatus=2
set statusline=\ "
set statusline+=%f\ " file name
set statusline+=[
set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=%{&fileformat}] " file format
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=%= " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

" Enable setting title
set title

" Configure title to look like: Vim /path/to/file
set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

" Make backspace work in insert mode
set backspace=indent,eol,start

" Enable US English dictionary
set spelllang=en_us

" Enable mouse in all modes
set mouse=a

" Disable error bells
set noerrorbells

" Don't reset cursor to start of line when moving around
set nostartofline

" Show the cursor position
set ruler

" Don't show the intro message
set shortmess=atI

" Show the current mode
set title

" Show the partial command as it is being typed
set showcmd

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
	autocmd FileType html setlocal expandtab shiftwidth=4 tabstop=4
	autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2
	autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
	autocmd FileType ruby setlocal expandtab
endif

" Map jj to <esc>
imap jj <Esc>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

