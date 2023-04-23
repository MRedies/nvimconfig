call plug#begin()
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' , { 'on': 'NERDTreeToggle' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/tpope/vim-fugitive'

Plug 'KeitaNakamura/neodark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdcommenter'

" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let mapleader=","

" Turn off default mapping
let g:NERDCreateDefaultMappings = 0
nmap <C-j>   <Plug>NERDCommenterToggle
vmap <C-j>   <Plug>NERDCommenterToggle<CR>gv


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set termguicolors                " recommended
colorscheme neodark

let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
tnoremap <Esc> <C-\><C-n>

