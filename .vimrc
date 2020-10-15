" Enables Vim to show parts of the text in another font or color
syntax on

"Show line numbers
set number
" Copy the indentation from the previous line, when starting a new line
set autoindent
" Highlight the current line and active column
"set cursorline
" :wset cuc cul
" Highlight search results
set hlsearch

let mapleader = ","

" Load Plug plugins
source ~/.vimrcplugins

" Theme configuration
"set background=light
let g:solarized_termcolors=256
colorscheme nord

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
set guifont=Source\ Code\ Pro\ for\ Powerline

autocmd BufEnter * lcd %:p:h "sync NERDTree files

let g:ackprg = 'ag --vimgrep'
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

" Go to tab by number
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

nnoremap <silent> <C-p> :Files<cr>
nnoremap <silent> <C-b> :Buffers<cr>
