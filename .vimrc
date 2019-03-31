" Vim plug
call plug#begin()
Plug 'tpope/vim-fugitive' " Display git information
Plug 'sheerun/vim-polyglot' " Syntax Highlighting
Plug 'ajmwagar/vim-deus'    " Theme
Plug 'w0rp/ale'             " Linting
Plug 'racer-rust/vim-racer' " Rust Autocomplete
call plug#end()

" Use Racer
let g:racer_experimental_completer = 1
au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
set hidden

" Linting options
let g:ale_linters = {
\   'rust': ['rls'],
\   'javascript': ['eslint'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'rust': ['rustfmt'],
\   'javascript': ['prettier', 'eslint'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'markdown': ['prettier'],
\}
let g:ale_fix_on_save = 1

set nobackup " No backup files
set noswapfile " No swap files

syntax on " syntax highlighting on
colorscheme deus " Use theme

set number " numbers on side
set showcmd " show comands in bottom right

set laststatus=2 " always show status bar
set statusline+=%{fugitive#statusline()}  " Show git information in status bar

