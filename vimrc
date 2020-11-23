" General settings
set nocompatible
filetype plugin indent on
syntax on
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set encoding=utf-8


" Visual aids
set number
set relativenumber
set cc=81
set showmode
set showcmd
set foldmethod=syntax
set foldlevelstart=20
set list!
set listchars=tab:»·


" Colors
set termguicolors
set t_Co=256
colorscheme default
set background=dark


" Backup and sessions
set nobackup
set nowritebackup
set noswapfile


" Search
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><backspace> :noh<cr>

set hlsearch
set showmatch
set incsearch

set ignorecase
set smartcase
set gdefault

set path+=**
set wildmenu
set splitbelow
set splitright

cmap <C-p> <Up>
cmap <C-n> <Down>

nnoremap <leader><leader> :
nnoremap <leader><backspace> :noh<cr>


"GUI config, both Gvim and Macvim


if has('gui_running')
  if has('macunix')
    set guifont=Menlo:h12
    nnoremap <D-1> 1gt
    nnoremap <D-2> 2gt
    nnoremap <D-3> 3gt
    nnoremap <D-4> 4gt
    nnoremap <D-5> 5gt
    nnoremap <D-6> 6gt
    nnoremap <D-7> 7gt
    nnoremap <D-8> 8gt
    nnoremap <D-9> :tablast<CR>
  else
    set guifont=Liberation\ Mono\ 10
  end
  set guioptions-=m
  set guioptions-=T
  set guioptions-=L
endif

set omnifunc=syntaxcomplete#Complete


" Basic Netrw config
noremap  <F2> :Lexplore<cr>
inoremap <F2> <esc>:Lexplore<cr>
noremap  <leader>v :Vexplore<cr>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0

runtime macros/matchit
packadd! matchit


" Grep setup
set grepprg=rg\ --vimgrep
nnoremap <leader>* :grep! "\b<C-R><C-W>\b"<CR>:copen<CR>


" Find setup
nnoremap <leader>f :find 


" Ctags setup
command! MakeTags !ctags -R
command! MakeRubyTags !ctags -R --language=ruby --exclude=.hg --exclude=log --exclude=tmp . $(bundle list --paths)
nnoremap <leader>t :MakeTags<CR>
nnoremap <leader>rt :MakeRubyTags <CR>


" Custom mappings
nnoremap <leader>W :%s/\s\+$//<cr>
nnoremap <leader><CR> a<CR><Esc>b

imap <leader>{ {}<Esc>i
nmap <leader>{ i{}<Esc>i

nnoremap <F1> :NERDTreeToggle<CR>
