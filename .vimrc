" Enables Vim to show parts of the text in another font or color
syntax on

"Show line numbers
set number
" Copy the indentation from the previous line, when starting a new line
set autoindent
" Highlight the current line and active column
set cursorline
set cuc cul
" Highlight search results
set hlsearch

let mapleader = ","

" Load Plug plugins
source ~/.vimrcplugins

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
let NERDTreeShowHidden=1
map <leader>n :NERDTreeToggle<cr>

set timeoutlen=1000

set ttimeoutlen=0

let g:ctrlp_custom_ignore = '\v[\/]\.(git)$'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

set shell=zsh

set nobackup      " no backup files
set nowritebackup " no backup file while editing
set noswapfile    " no swap files
set mouse=a
set incsearch

set backspace=indent,eol,start    " Backspace through everything in insert mode

set list
set listchars=""                  " Reset the listchars
set listchars=tab:▸·,eol:¬,trail:● " symbol settings for special characters

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_solarized_bg='light'
set encoding=utf-8 nobomb
set fileencoding=utf-8
set termencoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly:w

autocmd BufEnter * lcd %:p:h "sync NERDTree files

let g:ackprg = 'ag --vimgrep'

