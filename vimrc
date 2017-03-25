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
autocmd Filetype css setlocal ts=2 sts=2 sw=2 expandtab
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

" Autoset Paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" Easier split navigations
"
" Down pane
nnoremap <C-J> <C-W><C-J>
" Up pane
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More Natural split opening
set splitbelow
set splitright

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Syntastic recommended settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" visual autocomplete for command menu
set wildmenu

" open ag.vim
nnoremap ,a :Ag

" matching brackets
set smarttab
set autoindent
set smartindent
inoremap { {<CR><BS>}<Esc>ko

" exit nested braces or brackets
inoremap <C-j> <Esc>/[)}"'\]>]<CR>:nohl<CR>a
