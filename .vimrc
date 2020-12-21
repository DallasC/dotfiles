                        " Plugins (vim-plug)
call plug#begin()
Plug 'tpope/vim-fugitive' " Git for vim
Plug 'ajmwagar/vim-deus'    " Color Theme
Plug 'vim-syntastic/syntastic' " Error handling
Plug 'rust-lang/rust.vim'   " Rust syntax handling
Plug 'racer-rust/vim-racer' " Rust Autocomplete
call plug#end()

                        " Plugin Settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
filetype plugin indent on                       " rust.vim auto formating

                        " Display Settings
syntax on                                       " syntax highlighting on
colorscheme deus                                " color theme
set showcmd                                     " show comands in bottom right

                        " Gerneral Settings
set nobackup                                    " No backup files
set noswapfile                                  " No swap files
set backspace=indent,eol,start                  " backspacing over everything in insert mode
set expandtab                                   " fill tabs with spaces

                        " Search Settings
set hlsearch                                    " highlight search results
set ignorecase                                  " do case insensitive search...
set incsearch                                   " do incremental search
set smartcase                                   " ...unless capital letters are used

                        " Status Bar Settings
set laststatus=2                                " always show status bar
set statusline=                                 " clear status bar
set statusline=%n                               " buffer number
set statusline+=\                               " seperator 
set statusline+=%{fugitive#statusline()}        " git info
set statusline+=\                               " seperator 
set statusline+=%f                              " file path from current directory 
set statusline+=%m                              " modified status (+ changed, - No permision)
set statusline+=\                               " seperator 
"set statusline+=[%{&ff}:%{&fenc}:%Y]            " file format:file encoding:filetype 
"set statusline+=\                               " seperator 
"set statusline+=%{getcwd()}                     " current working directory
"set statusline+=\                               " seperator 
set statusline+=%=\                             " switch to right side 
set statusline+=[                               " formating string
set statusline+=%{strftime('%Y/%m/%d\ ')}       " year/month/day
set statusline+=%{strftime('%a\ ')}             " day abbreviation i.e Wed,Thr
set statusline+=%{strftime('%I:%M\ %p')}        " hr:min am/pm
set statusline+=]                               " formating string
set statusline+=\                               " seperator 
set statusline+=%4l\/%L:%03c                    " current line/total lines:column 
set statusline+=\                               " seperator 
set statusline+=%3p                             " percent of file
