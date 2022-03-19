""" Indention
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab

""" Search
set hlsearch
set smartcase
set incsearch

""" Perofrmance

""" UI
set laststatus=2
set ts=2
set sw=2
set ruler
set wildmenu
set cursorline
set number
set relativenumber
set noerrorbells
set visualbell


""" plug Manager
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier'
Plug 'sainnhe/sonokai'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'jiangmiao/auto-pairs'
Plug 'mxw/vim-jsx'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim'
Plug 'preservim/vim-colors-pencil'
Plug 'github/copilot.vim'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'tpope/vim-fugitive'
call plug#end()




""" More UI
set termguicolors     " enable true colors support
let ayucolor="mirage"  " for light version of theme
syntax on " This is required
colorscheme purify
""" Remaps
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap gp :Prettier <CR>
" FZF key bindings
nnoremap <C-f> :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }

nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <C-t> :NERDTreeToggle<CR>

