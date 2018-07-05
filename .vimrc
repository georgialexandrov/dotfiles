" Enables Vim to show parts of the text in another font or color
syntax on

"Show line numbers
set number
" Copy the indentation from the previous line, when starting a new line
set autoindent
" Highlight the current line and active column
set cursorline
set cuc cul

let mapleader = ","

" Load Plug plugins
source ./.vimrcplugins

" Theme configuration
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" NERDTree width
let g:NERDTreeWinSize = 60
map <leader>n :NERDTreeToggle<cr>
