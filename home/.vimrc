" We are running Vim, not Vi
set nocompatible

" Enable syntax highlighting
syntax on

" Enable filetype-specific indenting and plugins
filetype plugin indent on

" Show the best match so far as search strings are typed
set incsearch

" Highlight search results once found
set hlsearch

" Highlight the current line the cursor is on
set cursorline

" Flashes matching brackets or parentheses
set showmatch

" Helps with backspacing because of expandtab
set smarttab

" Set temp directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

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



