"allow for project specific vimrc's
set exrc
set secure
set mouse=a

"tab settings
set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

"line numbers on the right
set number

"match brackets
set showmatch

"split to the right
set splitright

"improved searching
set incsearch
set ignorecase
set smartcase

"indentations
set ai
set si
set wrap

"Fortran90 setup
"use free format Fortran
let fortran_free_source=1

"allow for tabs
let fortran_have_tabs=1

"better syntax highlighting (but slower)
let fortran_more_precise=1

let fortran_do_enddo=1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



"vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'

"Themes
Plug 'KeitaNakamura/neodark.vim'


"Nerd commentor
Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'chrisbra/vim-diff-enhanced'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'Yggdroot/indentLine'
call plug#end()


syntax enable
"set t_Co=256   " This is may or may not needed.

"set background=light
colorscheme neodark
let g:neodark#background='brown'


set nocp
filetype plugin on

"set leader key
let mapleader=","

"NERDTree appears on Ctrl-n
map <C-n> :NERDTreeToggle<CR>


set hidden
let g:LanguageClient_serverCommands = {
    \   'fortran': ['fortls', '--symbol_skip_mem', '--incrmental_sync', '--autocomplete_no_prefix']
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
