" Turn line numbers on
set number
" Prevents lines from going over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
" Enables coloring
syntax on
" Different Styling 
set clipboard=unnamed
set background=dark
set ruler
" Configure backspace to act like it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Highlight search results
set hlsearch
" Set incremental search
set incsearch
" Show matching brackets
set showmatch
" How many tenths of second to blink when matching brackets
set mat=2
" No annoying sounds on errors
set noerrorbells
set novisualbell
set tm=500
set textwidth=80
set	tabstop=4

set shiftwidth=4
colorscheme gotham256
set softtabstop=4
set autoindent
" Hightlights current line
set cursorline

" Shortcut to Normal mode
imap jj <ESC>

" Spacing and Tab features for different languages
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html.erb setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4 expandtab

" Match closing parenthesis 
runtime macros/matchit.vim

" Enable Pathogen plugin manager
execute pathogen#infect()

" Set Airlin status bar theme
let g:airline_theme='distinguished'
