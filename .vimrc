execute pathogen#infect()

set backupdir=/mnt/media/Trash/Vim/
set directory=/mnt/media/Trash/Vim/

set number          " Show line numbers
"set laststatus=2    " Always shows statusline
set mouse=a         " Enables mouse
set nowrap
set tabstop=8
"set expandtab       " Produces the appropriate number of spaces in place of tabs
"set shiftwidth=4    " Spaces for each step of (auto)indent
"set softtabstop=4   " How many columns used when you hit Tab in insert mode
"set noshowmode      " Hide the default mode text (e.g. INSERT)
set ttimeoutlen=20  " Timeout when returning to normal mode
set hidden          " Hides buffers instead of closing them
set autochdir       " Automatically cd into the file's directory
set backspace=2     " Makes backspace act like in most other editors
set noswapfile

syntax enable                       " Enables syntax highlighting
2mat ErrorMsg '\%81v.'              " Highlights the 81st character
autocmd BufWritePre * :%s/\s\+$//e  " Remove trailing spaces on save

nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>
nnoremap <F1> :NERDTreeTabsToggle<CR>

hi NonText      cterm=NONE ctermbg=NONE  ctermfg=0
hi VertSplit    cterm=NONE ctermbg=0     ctermfg=0
hi SignColumn   cterm=NONE ctermbg=NONE  ctermfg=7
hi Search       cterm=NONE ctermbg=4     ctermfg=8
hi ErrorMsg     cterm=NONE ctermbg=0     ctermfg=5
hi MatchParen   cterm=NONE ctermbg=7     ctermfg=0
hi TabLineFill  cterm=NONE ctermbg=0     ctermfg=7
hi TabLine      cterm=NONE ctermbg=0     ctermfg=7
hi LineNr       cterm=NONE ctermbg=NONE  ctermfg=0
hi Statement    cterm=NONE ctermbg=NONE  ctermfg=1
hi Constant     cterm=NONE ctermbg=NONE  ctermfg=6
hi Identifier   cterm=NONE ctermbg=NONE  ctermfg=2
hi Comment      cterm=NONE ctermbg=NONE  ctermfg=8

"=========================="
" PLUGIN SPECIFIC SETTINGS "
"=========================="

" Syntastic
hi SyntasticErrorSign           ctermbg=NONE ctermfg=1
hi SyntasticWarningSign         ctermbg=NONE ctermfg=3
hi SyntasticStyleErrorSign      ctermbg=NONE ctermfg=1
hi SyntasticStyleWarningSign    ctermbg=NONE ctermfg=3
hi SyntasticErrorLine           ctermbg=NONE ctermfg=NONE
hi SyntasticWarningLine         ctermbg=NONE ctermfg=NONE
hi SyntasticStyleErrorLine      ctermbg=NONE ctermfg=NONE
hi SyntasticStyleWarningLine    ctermbg=NONE ctermfg=NONE

" Airline
let g:airline_theme = "mossepolor"
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count = 2
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'
let g:airline#extensions#tabline#right_sep = '⮂'
let g:airline#extensions#tabline#right_alt_sep = '⮃'

let g:airline_section_b = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_section_c = ''
let g:airline_section_x = airline#section#create_right(['filetype'])
let g:airline_section_y = airline#section#create_right(['ffenc'])
let g:airline_section_z = '%3p%% %4l:%3c'

let g:airline#extensions#default#section_truncate_width = {'b': 20,'x': 20,'y': 20,'z': 20,}

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" NERDTree
let g:NERDTreeWinPos = "right"  " Align NERDTree to the right
let g:NERDTreeShowHidden=1      " Show hidden files by default
