"allow for project specific vimrc's
set exrc
set secure
set mouse=a

"tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"line numbers on the right
set number

"match brackets
set showmatch


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


"UltiSnips & youcompleteme
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"vim-plug
call plug#begin('~/.config/nvim/plugged')
"Fortran support
Plug 'rudrab/vimf90'
"julia
Plug 'JuliaLang/julia-vim'

Plug 'junegunn/vim-easy-align'

"Themes
Plug 'vim-scripts/Solarized'
Plug 'kamwitsta/nordisk'
Plug 'KeitaNakamura/neodark.vim'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'kiith-sa/DSnips'
Plug 'Valloric/YouCompleteMe'
Plug 'ervandew/supertab'

"Nerd commentor
Plug 'scrooloose/nerdcommenter'

"Command line
Plug 'lrvick/Conque-Shell'

"Nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'airblade/vim-gitgutter'

" Clojure
" Plug 'guns/vim-clojure-static'
" Plug 'luochen1990/rainbow'

" Rust
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

"JSON auto formating
command J :%!python -m json.tool


"Rainbrow parentheses
"let g:rainbow_active = 1 


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
