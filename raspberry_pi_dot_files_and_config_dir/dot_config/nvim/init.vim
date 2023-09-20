:set number
:set relativenumber
" :set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus


call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
"Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'lukas-reineke/indent-blankline.nvim' " for indent
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
"
" Auto-close braces and scopes
Plug 'jiangmiao/auto-pairs'

"Plug 'vijaymarupudi/nvim-fzf'
"Plug 'vijaymarupudi/nvim-fzf-commands'

Plug 'junegunn/fzf.vim'

"https://github.com/vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline-themes'
set encoding=UTF-8

call plug#end()



" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash or `[tilda] as the leader key.
let mapleader = "`"

" Press \\ to jump back to the last cursor position.
"nnoremap <leader>\ ``
nnoremap <leader>2 $a
nnoremap <leader>1 0i
inoremap <leader><leader> <Esc>

nnoremap ] $
vmap ] $
nnoremap [ 0
nnoremap ]\ v$
" nnoremap \\ %

inoremap <leader><leader> <Esc>
nnoremap <leader>3 i<cr><esc>k$

" nnoremap <leader>c :!javac %
" nnoremap <leader>j :!java -cp %:p:h %:t:r

" let g:netrw_winsize = 50


nnoremap rr :NERDTreeRefresh<CR>
"nnoremap <C-y> :NERDTree<CR>
nnoremap tt :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" ---------------------------------


nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

":colorscheme jellybeans
:colorscheme Default

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
"let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

