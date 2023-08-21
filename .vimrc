" Plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                             " Fuzzy finder
Plug 'preservim/nerdtree'                           " shows directory tree
Plug 'haishanh/night-owl.vim'                       " Night owl theme
call plug#end()

" Options
set hlsearch                                        " highlights the word being searched
set number                                          " show line number

" Misc
set clipboard=unnamedplus                           " Not working for me. Combine vim clipbaord and sysem clipboard
set showmatch                                       " show matching words during a search.
set wildmenu                                        " auto completion in menu (using tab)

" Indentation options
set expandtab                                       " expand tab to spaces
set shiftwidth=4                                    " shift = N spaces
set smartindent                                     " use $tabstop number of spaces when replacing tab
set tabstop=4                                       " tab = N spaces
set autoindent                                      " auto indent when opening a new line

" fzf mappings
nmap <C-f> :Files<CR>

" nerdtree mapping
nmap <C-b> :NERDTreeToggle<CR>

" tabs
nnoremap <C-j> :tabprevious<CR>                                                         
nnoremap <C-k> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-w> :tabclose<CR>


" night-owl color-scheme
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl

" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }

